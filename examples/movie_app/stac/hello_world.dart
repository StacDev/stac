import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: "hello_world")
StacWidget helloWorld() {
  return StacScaffold(
    body: StacCenter(
      child: StacText(data: 'Hello, world!'),
    ),
  );
}
