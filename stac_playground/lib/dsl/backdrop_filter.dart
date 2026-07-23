import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'backdrop_filter')
StacWidget backdropFilterExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Backdrop Filter Example')),
    body: StacSingleChildScrollView(
      child: StacColumn(
        mainAxisAlignment: StacMainAxisAlignment.center,
        crossAxisAlignment: StacCrossAxisAlignment.center,
        children: [
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data:
                  'Backdrop filters apply visual effects to everything behind a widget.',
              textAlign: StacTextAlign.center,
              style:
                  StacTextStyle(fontSize: 16, fontWeight: StacFontWeight.w700),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Blur Filter with sigmaX: 10.0, sigmaY: 10.0',
              style: StacTextStyle(fontSize: 18),
            ),
          ),
          StacClipRRect(
            borderRadius: StacBorderRadius.all(16),
            child: StacSizedBox(
              height: 200,
              width: 300,
              child: StacStack(
                fit: StacStackFit.expand,
                children: [
                  StacContainer(
                    decoration: StacBoxDecoration(
                      image: StacDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: StacBoxFit.cover,
                      ),
                    ),
                  ),
                  StacBackdropFilter(
                    filter: StacImageFilter(
                      type: StacImageFilterType.blur,
                      sigmaX: 10.0,
                      sigmaY: 10.0,
                    ),
                    child: StacContainer(
                      decoration: StacBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Dilate Filter with radiusX: 2.0, radiusY: 2.0',
              style: StacTextStyle(fontSize: 18),
            ),
          ),
          StacClipRRect(
            borderRadius: StacBorderRadius.all(16),
            child: StacSizedBox(
              height: 200,
              width: 300,
              child: StacStack(
                fit: StacStackFit.expand,
                children: [
                  StacContainer(
                    decoration: StacBoxDecoration(
                      image: StacDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: StacBoxFit.cover,
                      ),
                    ),
                  ),
                  StacBackdropFilter(
                    filter: StacImageFilter(
                      type: StacImageFilterType.dilate,
                      radiusX: 2.0,
                      radiusY: 2.0,
                    ),
                    child: StacContainer(
                      decoration: StacBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Erode Filter with radiusX: 2.0, radiusY: 2.0',
              style: StacTextStyle(fontSize: 18),
            ),
          ),
          StacClipRRect(
            borderRadius: StacBorderRadius.all(16),
            child: StacSizedBox(
              height: 200,
              width: 300,
              child: StacStack(
                fit: StacStackFit.expand,
                children: [
                  StacContainer(
                    decoration: StacBoxDecoration(
                      image: StacDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: StacBoxFit.cover,
                      ),
                    ),
                  ),
                  StacBackdropFilter(
                    filter: StacImageFilter(
                      type: StacImageFilterType.erode,
                      radiusX: 2.0,
                      radiusY: 2.0,
                    ),
                    child: StacContainer(
                      decoration: StacBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Frosted Glass Effect with sigmaX: 15.0, sigmaY: 15.0',
              style: StacTextStyle(fontSize: 18),
            ),
          ),
          StacClipRRect(
            borderRadius: StacBorderRadius.all(16),
            child: StacSizedBox(
              height: 200,
              width: 300,
              child: StacStack(
                fit: StacStackFit.expand,
                children: [
                  StacContainer(
                    decoration: StacBoxDecoration(
                      image: StacDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: StacBoxFit.cover,
                      ),
                    ),
                  ),
                  StacBackdropFilter(
                    filter: StacImageFilter(
                      type: StacImageFilterType.blur,
                      sigmaX: 15.0,
                      sigmaY: 15.0,
                    ),
                    child: StacContainer(
                      decoration: StacBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Compose Filter (Blur + Dilate)',
              style: StacTextStyle(fontSize: 18),
            ),
          ),
          StacClipRRect(
            borderRadius: StacBorderRadius.all(16),
            child: StacSizedBox(
              height: 200,
              width: 300,
              child: StacStack(
                fit: StacStackFit.expand,
                children: [
                  StacContainer(
                    decoration: StacBoxDecoration(
                      image: StacDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: StacBoxFit.cover,
                      ),
                    ),
                  ),
                  StacBackdropFilter(
                    filter: StacImageFilter(
                      type: StacImageFilterType.compose,
                      outer: StacImageFilter(
                        type: StacImageFilterType.blur,
                        sigmaX: 5.0,
                        sigmaY: 5.0,
                      ),
                      inner: StacImageFilter(
                        type: StacImageFilterType.dilate,
                        radiusX: 2.0,
                        radiusY: 2.0,
                      ),
                    ),
                    child: StacContainer(
                      decoration: StacBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
          StacPadding(
            padding: StacEdgeInsets.all(16),
            child: StacText(
              data: 'Blur Filter with BlendMode dstOver',
              style: StacTextStyle(fontSize: 18),
            ),
          ),
          StacClipRRect(
            borderRadius: StacBorderRadius.all(16),
            child: StacSizedBox(
              height: 200,
              width: 300,
              child: StacStack(
                fit: StacStackFit.expand,
                children: [
                  StacContainer(
                    decoration: StacBoxDecoration(
                      image: StacDecorationImage(
                        src:
                            'https://images.pexels.com/photos/1323550/pexels-photo-1323550.jpeg',
                        fit: StacBoxFit.cover,
                      ),
                    ),
                  ),
                  StacBackdropFilter(
                    filter: StacImageFilter(
                      type: StacImageFilterType.blur,
                      radiusX: 10.0,
                      radiusY: 10.0,
                    ),
                    blendMode: StacBlendMode.dstOver,
                    child: StacContainer(
                      decoration: StacBoxDecoration(color: '#80FFFFFF'),
                    ),
                  ),
                ],
              ),
            ),
          ),
          StacDivider(height: 20),
        ],
      ),
    ),
  );
}
