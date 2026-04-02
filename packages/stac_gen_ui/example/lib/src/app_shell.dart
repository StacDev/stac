import 'dart:convert';
import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:stac_gen_ui/stac_gen_ui.dart';
import 'package:example/src/screens/generated_ui_screen.dart';
import 'package:example/src/screens/home_screen.dart';
import 'package:example/src/screens/saved_jsons_screen.dart';
import 'package:example/src/screens/settings_screen.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key});

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  static const _secureStorage = FlutterSecureStorage();
  static const _savedJsonsKey = 'saved_stac_jsons_v1';
  static const _apiKeySettingKey = 'generation_claude_api_key_v1';
  static const _maxTokensSettingKey = 'generation_max_tokens_v1';
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _savedJsons = <Map<String, dynamic>>[];
  String _apiKey = '';
  int _maxTokens = 8192;

  @override
  void initState() {
    super.initState();
    _loadPersistedState();
  }

  Future<void> _loadPersistedState() async {
    final prefs = await SharedPreferences.getInstance();
    final rawSaved = prefs.getStringList(_savedJsonsKey) ?? const <String>[];
    final apiKeyFromStorage = _supportsSecureStorage
        ? (await _secureStorage.read(key: _apiKeySettingKey)) ?? ''
        : (prefs.getString(_apiKeySettingKey) ?? '');
    final maxTokensFromPrefs = prefs.getInt(_maxTokensSettingKey) ?? 8192;
    final currentConfigApiKey =
        StacGenUiConfig.hasApiKey ? StacGenUiConfig.apiKey : '';
    final effectiveApiKey = apiKeyFromStorage.trim().isNotEmpty
        ? apiKeyFromStorage.trim()
        : currentConfigApiKey;
    final restored = <Map<String, dynamic>>[];

    for (final item in rawSaved) {
      try {
        final decoded = jsonDecode(item);
        if (decoded is Map<String, dynamic>) {
          restored.add(decoded);
        }
      } catch (_) {
        // Ignore malformed stored records.
      }
    }

    if (!mounted) return;
    setState(() {
      _savedJsons
        ..clear()
        ..addAll(restored);
      _apiKey = effectiveApiKey;
      _maxTokens = maxTokensFromPrefs;
    });

    StacGenUiConfig.updateGenerationSettings(
      apiKey: effectiveApiKey,
      maxTokens: _maxTokens,
    );
  }

  Future<void> _persistSavedJsons() async {
    final prefs = await SharedPreferences.getInstance();
    final encoded = _savedJsons.map(jsonEncode).toList(growable: false);
    await prefs.setStringList(_savedJsonsKey, encoded);
  }

  Future<void> _saveGenerationSettings(String apiKey, int maxTokens) async {
    final normalizedApiKey = apiKey.trim();
    final prefs = await SharedPreferences.getInstance();
    if (_supportsSecureStorage) {
      await _secureStorage.write(key: _apiKeySettingKey, value: normalizedApiKey);
      // Clean up any legacy plain-text key when secure storage is active.
      await prefs.remove(_apiKeySettingKey);
    } else {
      await prefs.setString(_apiKeySettingKey, normalizedApiKey);
    }
    await prefs.setInt(_maxTokensSettingKey, maxTokens);

    if (!mounted) return;
    setState(() {
      _apiKey = normalizedApiKey;
      _maxTokens = maxTokens;
    });

    StacGenUiConfig.updateGenerationSettings(
      apiKey: normalizedApiKey,
      maxTokens: maxTokens,
    );
  }

  void _openGeneratedUi(String prompt) {
    Navigator.of(context).push(
      MaterialPageRoute<void>(
        builder: (_) => GeneratedUiScreen(
          prompt: prompt,
          onJsonGenerated: (json) {
            WidgetsBinding.instance.addPostFrameCallback((_) {
              if (!mounted) return;
              final toSave = Map<String, dynamic>.from(json);
              setState(() => _savedJsons.insert(0, toSave));
              _persistSavedJsons();
            });
          },
        ),
      ),
    );
  }

  bool get _supportsSecureStorage {
    if (kIsWeb) return false;
    return Platform.isAndroid || Platform.isIOS;
  }

  void _openSettingsTab() {
    setState(() => _selectedIndex = 2);
  }

  @override
  Widget build(BuildContext context) {
    final pages = [
      HomeScreen(
        onGenerate: _openGeneratedUi,
        hasApiKey: _apiKey.isNotEmpty,
        onOpenSettings: _openSettingsTab,
      ),
      SavedJsonsScreen(savedJsons: _savedJsons),
      SettingsScreen(
        initialApiKey: _apiKey,
        initialMaxTokens: _maxTokens,
        onSaveGenerationSettings: _saveGenerationSettings,
      ),
    ];

    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: pages,
      ),
      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) {
          setState(() => _selectedIndex = index);
        },
        destinations: const [
          NavigationDestination(
            icon: PhosphorIcon(PhosphorIconsRegular.house),
            selectedIcon: PhosphorIcon(PhosphorIconsFill.house),
            label: 'Home',
          ),
          NavigationDestination(
            icon: PhosphorIcon(PhosphorIconsRegular.folderSimple),
            selectedIcon: PhosphorIcon(PhosphorIconsFill.folderSimple),
            label: 'Saved',
          ),
          NavigationDestination(
            icon: PhosphorIcon(PhosphorIconsRegular.gear),
            selectedIcon: PhosphorIcon(PhosphorIconsFill.gear),
            label: 'Settings',
          ),
        ],
      ),
    );
  }
}
