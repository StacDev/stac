import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:stac/src/framework/stac_service.dart';
import 'package:stac/src/services/stac_bundle_service.dart';

/// Keeps the Stac bundle fresh while the app runs.
///
/// Registered by `StacService.initialize` when bundle mode is enabled.
/// Runs a conditional bundle sync on foreground resume (when
/// `StacBundleConfig.checkOnResume`) and on an optional periodic timer
/// (`StacBundleConfig.pollingInterval`) that only runs while the app is
/// foregrounded (cancelled on pause, restarted on resume).
///
/// Every trigger is just the cheap conditional GET — a `304` is a no-op
/// and is not billed.
class StacBundleUpdater with WidgetsBindingObserver {
  StacBundleUpdater._();

  static StacBundleUpdater? _instance;

  /// The registered updater instance, if started; for tests only.
  @visibleForTesting
  static StacBundleUpdater? get instance => _instance;

  Timer? _pollingTimer;

  /// Registers the updater as a lifecycle observer and starts the polling
  /// timer when configured.
  ///
  /// Calling [start] on an already-started updater re-arms the polling
  /// timer from the current `StacService.bundleConfig`, so a re-initialize
  /// with a different (or removed) `pollingInterval` takes effect.
  static void start() {
    final existing = _instance;
    if (existing != null) {
      existing._cancelPollingTimer();
      existing._startPollingTimer();
      return;
    }

    // Stac.initialize is typically called before runApp, so the widgets
    // binding may not exist yet; create it before registering a lifecycle
    // observer (idempotent). Also required for seed-asset loading.
    WidgetsFlutterBinding.ensureInitialized();

    final updater = StacBundleUpdater._();
    WidgetsBinding.instance.addObserver(updater);
    // The app starts foregrounded; arm the polling timer right away.
    updater._startPollingTimer();
    _instance = updater;
  }

  /// Unregisters the updater and cancels any polling timer.
  static void stop() {
    final updater = _instance;
    if (updater == null) return;

    updater._cancelPollingTimer();
    WidgetsBinding.instance.removeObserver(updater);
    _instance = null;
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    switch (state) {
      case AppLifecycleState.resumed:
        if (StacService.bundleConfig.checkOnResume) {
          unawaited(StacBundleService.sync());
        }
        _startPollingTimer();
      case AppLifecycleState.paused:
      case AppLifecycleState.hidden:
      case AppLifecycleState.detached:
        _cancelPollingTimer();
      case AppLifecycleState.inactive:
        // Transient state (e.g. system dialogs): keep the timer running.
        break;
    }
  }

  /// Starts the periodic conditional sync when [StacBundleConfig.pollingInterval]
  /// is set, replacing any timer already running (so interval changes apply).
  void _startPollingTimer() {
    final interval = StacService.bundleConfig.pollingInterval;
    if (interval == null) return;

    _pollingTimer?.cancel();
    _pollingTimer = Timer.periodic(interval, (_) {
      unawaited(StacBundleService.sync());
    });
  }

  void _cancelPollingTimer() {
    _pollingTimer?.cancel();
    _pollingTimer = null;
  }
}
