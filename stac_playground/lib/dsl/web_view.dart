import 'package:stac_core/stac_core.dart';
import 'package:stac_webview/stac_webview.dart';

@StacScreen(screenName: 'web_view')
StacWidget webViewExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'WebView')),
    body: StacWebView(url: 'https://github.com/StacDev/stac'),
  );
}
