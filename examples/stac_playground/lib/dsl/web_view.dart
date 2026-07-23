import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'web_view')
StacWidget webViewExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'WebView')),
    // NOTE: the JSON body is {"type": "webView", "url":
    // "https://github.com/StacDev/stac"}. The webView widget (StacWebView) lives
    // in the separate `stac_webview` plugin package (it depends on
    // webview_flutter), which is not part of stac_core and is not a dependency
    // of this stac_core-only playground. With the plugin added and imported, the
    // faithful body is simply:
    //
    //   import 'package:stac_webview/stac_webview.dart';
    //   ...
    //   body: StacWebView(url: 'https://github.com/StacDev/stac'),
    //
    // A placeholder that preserves the URL is used here instead.
    body: StacCenter(
      child: StacText(data: 'WebView: https://github.com/StacDev/stac'),
    ),
  );
}
