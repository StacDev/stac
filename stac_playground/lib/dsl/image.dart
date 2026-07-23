import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'image')
StacWidget imageExample() {
  return StacScaffold(
      appBar: StacAppBar(title: StacText(data: 'Image')),
      body: StacSingleChildScrollView(
          child: StacRow(
              mainAxisAlignment: StacMainAxisAlignment.center,
              crossAxisAlignment: StacCrossAxisAlignment.center,
              children: [
            StacColumn(
                mainAxisAlignment: StacMainAxisAlignment.center,
                crossAxisAlignment: StacCrossAxisAlignment.center,
                children: [
                  StacSizedBox(height: 24),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacGestureDetector(
                            child: StacImage(
                                src:
                                    'https://images.pexels.com/photos/15113967/pexels-photo-15113967.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                                height: 150),
                            onTap: StacNavigateAction(
                                assetPath: 'assets/json/form_example.json')),
                        StacSizedBox(width: 20),
                        StacImage(
                            src: 'assets/images/logo_console.png',
                            imageType: StacImageType.asset,
                            height: 150)
                      ]),
                  StacSizedBox(height: 24),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacImage(
                            src:
                                'https://images.pexels.com/photos/15352100/pexels-photo-15352100.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            height: 150),
                        StacSizedBox(width: 20),
                        StacImage(
                            src:
                                'https://images.pexels.com/photos/15373031/pexels-photo-15373031.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            height: 150)
                      ]),
                  StacSizedBox(height: 24),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacImage(
                            src:
                                'https://images.pexels.com/photos/10041677/pexels-photo-10041677.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                            height: 150),
                        StacSizedBox(width: 20),
                        StacImage(
                            src: 'assets/images/dart_logo.png',
                            imageType: StacImageType.asset,
                            height: 150,
                            width: 100,
                            fit: StacBoxFit.fill)
                      ]),
                  StacSizedBox(height: 24),
                  StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.center,
                      crossAxisAlignment: StacCrossAxisAlignment.center,
                      children: [
                        StacImage(
                            src:
                                'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg',
                            height: 100,
                            width: 100),
                        StacSizedBox(width: 20),
                        StacImage(
                            imageType: StacImageType.asset,
                            src: 'assets/images/logo.svg',
                            color: 'primary',
                            height: 100,
                            width: 100)
                      ]),
                  StacSizedBox(height: 24)
                ])
          ])));
}
