import 'dart:convert';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:stac/stac.dart';

/// An HTTP adapter that answers from [respond] and records every request.
class FakeHttp implements HttpClientAdapter {
  final List<RequestOptions> requests = [];
  ResponseBody Function(RequestOptions options) respond = (_) => json({});

  /// How long each response takes. Advance time with `tester.pump`.
  Duration delay = Duration.zero;

  /// Clears recorded requests and restores the default response and delay.
  void reset() {
    requests.clear();
    respond = (_) => json({});
    delay = Duration.zero;
  }

  static ResponseBody json(Object? body, {int status = 200}) {
    return ResponseBody.fromString(
      jsonEncode(body),
      status,
      headers: {
        Headers.contentTypeHeader: [Headers.jsonContentType],
      },
    );
  }

  @override
  Future<ResponseBody> fetch(
    RequestOptions options,
    Stream<Uint8List>? requestStream,
    Future<void>? cancelFuture,
  ) async {
    requests.add(options);
    if (delay > Duration.zero) await Future<void>.delayed(delay);
    return respond(options);
  }

  @override
  void close({bool force = false}) {}
}

final FakeHttp fakeHttp = FakeHttp();

Future<void> initStacForTests({
  Map<String, dynamic>? initialState,
  List<String> persist = const [],
  StacStateStorage? stateStorage,
  List<StacStateObserver>? stateObservers,
}) {
  final dio = Dio()..httpClientAdapter = fakeHttp;
  return Stac.initialize(
    dio: dio,
    override: true,
    logStackTraces: false,
    initialState: initialState,
    persist: persist,
    stateStorage: stateStorage,
    stateObservers: stateObservers,
  );
}

/// Keeps persisted state in memory and records every write and delete.
class MemoryStateStorage extends StacStateStorage {
  MemoryStateStorage([Map<String, String>? values]) : values = {...?values};

  final Map<String, String> values;
  final List<String> log = [];

  @override
  Future<String?> read(String key) async => values[key];

  @override
  Future<void> write(String key, String value) async {
    log.add('write $key');
    values[key] = value;
  }

  @override
  Future<void> delete(String key) async {
    log.add('delete $key');
    values.remove(key);
  }
}

/// Records the changes and level events it observes.
class RecordingObserver extends StacStateObserver {
  final List<StacStateChange> changes = [];
  final List<String> events = [];

  @override
  void onChange(StacStateChange change) => changes.add(change);

  @override
  void onLevelCreated(StacStateLevel level) {
    events.add('created ${describeStacStateLevel(level)}');
  }

  @override
  void onLevelDisposed(StacStateLevel level) {
    events.add('disposed ${describeStacStateLevel(level)}');
  }
}

/// Hosts [json] in an app. Call [StacHost.rebuild] to rebuild the host
/// without changing the JSON.
class StacHost extends StatefulWidget {
  const StacHost(this.json, {super.key});

  final Map<String, dynamic> json;

  static StacHostState of(WidgetTester tester) {
    return tester.state<StacHostState>(find.byType(StacHost));
  }

  @override
  State<StacHost> createState() => StacHostState();
}

class StacHostState extends State<StacHost> {
  late Map<String, dynamic> json = widget.json;
  int builds = 0;

  void rebuild([Map<String, dynamic>? next]) {
    setState(() => json = next ?? json);
  }

  @override
  Widget build(BuildContext context) {
    builds++;
    return Stac.fromJson(json, context) ?? const SizedBox();
  }
}

Widget stacApp(Map<String, dynamic> json) {
  return MaterialApp(home: Scaffold(body: StacHost(json)));
}

dynamic variable(String key) => StacRegistry.instance.getValue(key);

void clearVariables(Iterable<String> keys) {
  for (final key in keys) {
    StacRegistry.instance.removeValue(key);
  }
}
