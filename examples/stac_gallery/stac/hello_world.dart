import 'package:stac_core/stac_core.dart';

StacWidget helloWorld() {
  return StacScaffold(
    body: StacCenter(
      child: StacText(data: 'Hello, world!'),
    ),
  );
}
