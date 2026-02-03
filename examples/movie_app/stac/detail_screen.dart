import 'package:movie_app/constants/app_constants.dart';
import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'detail_screen')
StacWidget detailScreen() {
  return StacScaffold(
    extendBodyBehindAppBar: true,
    appBar: StacAppBar(
      backgroundColor: 'transparent',
      leading: StacIconButton(
        icon: StacIcon(icon: 'chevron_left', color: 'onSurface'),
        style: StacButtonStyle(
          backgroundColor: '#50050608',
          fixedSize: StacSize(36, 36),
        ),
        onPressed: StacAction(
          jsonData: {'actionType': 'navigate', 'navigationStyle': 'pop'},
        ),
      ),
    ),
    body: StacDynamicView(
      request: StacNetworkRequest(
        url: '${AppApi.baseUrl}/movie/{{movie_id}}?language=${AppApi.language}',
        method: Method.get,
      ),
      template: StacSingleChildScrollView(
        child: StacColumn(
          children: [
            StacStack(
              children: [
                StacImage(
                  src: '${AppApi.imageBaseUrl}/{{poster_path}}',
                  width: double.maxFinite,
                  height: 480,
                  fit: StacBoxFit.cover,
                ),
                StacPositioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: StacContainer(
                    height: 240,
                    decoration: StacBoxDecoration(
                      gradient: StacGradient.linear(
                        colors: ['#00050608', '#050608'],
                        begin: StacAlignment.topCenter,
                        end: StacAlignment.bottomCenter,
                        stops: [0.0, 1.0],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            StacPadding(
              padding: StacEdgeInsets.only(left: 16, right: 16),
              child: StacColumn(
                crossAxisAlignment: StacCrossAxisAlignment.start,
                children: [
                  StacRow(
                    mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
                    children: [
                      StacExpanded(
                        child: StacText(
                          data: '{{title}}',
                          style: StacThemeData.textTheme.headlineMedium,
                          overflow: StacTextOverflow.ellipsis,
                        ),
                      ),
                      StacContainer(
                        height: 24,
                        decoration: StacBoxDecoration(
                          borderRadius: StacBorderRadius.all(4),
                          color: 'primary',
                        ),
                        child: StacRow(
                          children: [
                            StacSizedBox(width: 6),
                            StacIcon(
                              icon: 'star_rounded',
                              color: 'onPrimary',
                              size: 14,
                            ),
                            StacSizedBox(width: 2),
                            StacText(
                              data: '{{vote_average}}',
                              style: StacCustomTextStyle(
                                color: 'onPrimary',
                                fontSize: 14,
                              ),
                            ),
                            StacSizedBox(width: 6),
                          ],
                        ),
                      ),
                    ],
                  ),
                  StacDivider(),
                  StacText(
                    data: '{{release_date}} · {{runtime}} mins',
                    style: StacThemeData.textTheme.bodySmall,
                    textAlign: StacTextAlign.left,
                  ),
                  StacDivider(),
                  StacRow(
                    children: [
                      StacExpanded(
                        child: StacFilledButton(
                          child: StacRow(
                            mainAxisAlignment: StacMainAxisAlignment.center,
                            children: [
                              StacIcon(icon: 'play_circle_filled', size: 24),
                              StacSizedBox(width: 6),
                              StacText(data: AppStrings.watchTrailer),
                            ],
                          ),
                          onPressed: null,
                        ),
                      ),
                      StacSizedBox(width: 16),
                      StacOutlinedButton(
                        child: StacRow(
                          mainAxisAlignment: StacMainAxisAlignment.center,
                          children: [
                            StacIcon(icon: 'favorite_outline', size: 24),
                            StacSizedBox(width: 6),
                            StacText(data: AppStrings.addToWatchlist),
                          ],
                        ),
                        onPressed: null,
                      ),
                    ],
                  ),
                  StacSizedBox(height: 24),
                  StacColumn(
                    crossAxisAlignment: StacCrossAxisAlignment.start,
                    children: [
                      StacText(
                        data: AppStrings.about,
                        style: StacThemeData.textTheme.bodyMedium,
                      ),
                      StacSizedBox(height: 4),
                      StacContainer(width: 24, height: 2, color: 'primary'),
                    ],
                  ),
                  StacSizedBox(height: 20),
                  StacText(
                    data: '{{overview}}',
                    style: StacThemeData.textTheme.bodyMedium,
                  ),
                  StacSizedBox(height: 24),
                  StacColumn(
                    crossAxisAlignment: StacCrossAxisAlignment.start,
                    children: [
                      StacText(
                        data: AppStrings.cast,
                        style: StacCustomTextStyle(
                          fontSize: 16,
                          fontWeight: StacFontWeight.w600,
                          height: 1.3,
                          color: 'onSurfaceVariant',
                        ),
                      ),
                      StacSizedBox(height: 10),
                      StacSizedBox(
                        height: 146,
                        child: StacDynamicView(
                          request: StacNetworkRequest(
                            url:
                                '${AppApi.baseUrl}/movie/{{movie_id}}/credits?language=${AppApi.language}',
                            method: Method.get,
                          ),
                          targetPath: 'cast',
                          template: _buildCastListViewTemplate(),
                        ),
                      ),
                    ],
                  ),
                  StacSizedBox(height: 24),
                  StacColumn(
                    crossAxisAlignment: StacCrossAxisAlignment.start,
                    children: [
                      StacText(
                        data: AppStrings.similarMovies,
                        style: StacCustomTextStyle(
                          fontSize: 16,
                          fontWeight: StacFontWeight.w600,
                          height: 1.3,
                          color: 'onSurfaceVariant',
                        ),
                      ),
                      StacSizedBox(height: 10),
                      StacSizedBox(
                        height: 164,
                        child: StacDynamicView(
                          request: StacNetworkRequest(
                            url:
                                '${AppApi.baseUrl}/movie/{{movie_id}}/similar?language=${AppApi.language}&page=1',
                            method: Method.get,
                          ),
                          targetPath: 'results',
                          resultTarget: 'data',
                          template: _buildSimilarMoviesListViewTemplate(),
                        ),
                      ),
                    ],
                  ),
                  StacSizedBox(height: 80),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}

/// Helper function to build a ListView template with itemTemplate for cast list.
StacWidget _buildCastListViewTemplate() {
  final templateJson = {
    'type': 'listView',
    'scrollDirection': 'horizontal',
    'shrinkWrap': true,
    'separator': StacSizedBox(width: 16).toJson(),
    'itemTemplate': StacSizedBox(
      width: 80,
      child: StacColumn(
        crossAxisAlignment: StacCrossAxisAlignment.start,
        children: [
          StacClipRRect(
            borderRadius: StacBorderRadius.all(6),
            child: StacImage(
              src: '${AppApi.imageBaseUrl}/{{profile_path}}',
              fit: StacBoxFit.cover,
              width: 80,
              height: 96,
            ),
          ),
          StacSizedBox(height: 8),
          StacText(
            data: '{{name}}',
            style: StacThemeData.textTheme.titleSmall,
            overflow: StacTextOverflow.ellipsis,
          ),
          StacText(
            data: '{{character}}',
            style: StacThemeData.textTheme.bodySmall,
            overflow: StacTextOverflow.ellipsis,
          ),
        ],
      ),
    ).toJson(),
  };

  return StacWidget(jsonData: templateJson);
}

/// Helper function to build a ListView template with itemTemplate for similar movies.
StacWidget _buildSimilarMoviesListViewTemplate() {
  final templateJson = {
    'type': 'listView',
    'scrollDirection': 'horizontal',
    'shrinkWrap': true,
    'separator': StacSizedBox(width: 8).toJson(),
    'itemTemplate': StacGestureDetector(
      onTap: StacSetValueAction(
        values: [
          {'key': 'movie_id', 'value': '{{data.id}}'},
        ],
        action: StacNavigator.pushStac('detail_screen'),
      ),
      child: StacClipRRect(
        borderRadius: StacBorderRadius.all(6),
        child: StacImage(
          imageType: StacImageType.network,
          src: '${AppApi.imageBaseUrl}/{{data.poster_path}}',
          width: 108,
          height: 164,
        ),
      ),
    ).toJson(),
  };

  return StacWidget(jsonData: templateJson);
}
