import 'package:movie_app/constants/app_constants.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel.dart';
import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'home_screen')
StacWidget homeScreen() {
  return StacDefaultBottomNavigationController(
    length: 3,
    child: StacScaffold(
      extendBodyBehindAppBar: true,
      body: StacBottomNavigationView(
        children: [
          StacListView(
            padding: StacEdgeInsets.all(0),
            children: [
              StacMovieCarousel(
                request: StacNetworkRequest(
                  url: AppApi.getTrendingMoviesUrl(),
                  method: Method.get,
                ),
              ),
              StacColumn(
                children: [
                  StacPadding(
                    padding: StacEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
                      children: [
                        StacText(
                          data: AppStrings.nowPlaying,
                          style: StacThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  StacSizedBox(
                    height: 164,
                    child: StacDynamicView(
                      request: StacNetworkRequest(
                        url: AppApi.getNowPlayingMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              StacColumn(
                children: [
                  StacPadding(
                    padding: StacEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
                      children: [
                        StacText(
                          data: AppStrings.popularMovies,
                          style: StacThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  StacSizedBox(
                    height: 164,
                    child: StacDynamicView(
                      request: StacNetworkRequest(
                        url: AppApi.getPopularMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              StacColumn(
                children: [
                  StacPadding(
                    padding: StacEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
                      children: [
                        StacText(
                          data: AppStrings.trendingMovies,
                          style: StacThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  StacSizedBox(
                    height: 164,
                    child: StacDynamicView(
                      request: StacNetworkRequest(
                        url: AppApi.getTrendingMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              StacColumn(
                children: [
                  StacPadding(
                    padding: StacEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
                      children: [
                        StacText(
                          data: AppStrings.topRated,
                          style: StacThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  StacSizedBox(
                    height: 164,
                    child: StacDynamicView(
                      request: StacNetworkRequest(
                        url: AppApi.getTopRatedMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              StacColumn(
                children: [
                  StacPadding(
                    padding: StacEdgeInsets.only(
                      left: 16,
                      right: 16,
                      top: 24,
                      bottom: 10,
                    ),
                    child: StacRow(
                      mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
                      children: [
                        StacText(
                          data: AppStrings.upcomingMovies,
                          style: StacThemeData.textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ),
                  StacSizedBox(
                    height: 164,
                    child: StacDynamicView(
                      request: StacNetworkRequest(
                        url: AppApi.getUpcomingMoviesUrl(),
                        method: Method.get,
                      ),
                      targetPath: 'results',
                      template: _buildMovieListViewTemplate(),
                    ),
                  ),
                ],
              ),
              StacSizedBox(height: 80),
            ],
          ),
          StacCenter(child: StacText(data: AppStrings.search)),
          StacCenter(child: StacText(data: AppStrings.profile)),
        ],
      ),
      bottomNavigationBar: StacBottomNavigationBar(
        items: [
          StacBottomNavigationBarItem(
            label: AppStrings.bottomNavHome,
            icon: StacIcon(icon: 'home_outlined'),
          ),
          StacBottomNavigationBarItem(
            label: AppStrings.bottomNavSearch,
            icon: StacIcon(icon: 'search_outlined'),
          ),
          StacBottomNavigationBarItem(
            label: AppStrings.bottomNavProfile,
            icon: StacIcon(icon: 'person_outlined'),
          ),
        ],
      ),
    ),
  );
}

/// Helper function to build a ListView template with itemTemplate for movie lists.
/// Note: itemTemplate is a parser-specific feature handled by the dynamicView parser.
/// We construct the template as JSON to include itemTemplate.
StacWidget _buildMovieListViewTemplate() {
  // Create template JSON with itemTemplate (parser-specific feature)
  final templateJson = {
    'type': 'listView',
    'scrollDirection': 'horizontal',
    'shrinkWrap': true,
    'separator': StacSizedBox(width: 8).toJson(),
    'padding': StacEdgeInsets.only(left: 16).toJson(),
    'itemTemplate': StacGestureDetector(
      onTap: StacAction.fromJson({
        'actionType': 'setValue',
        'values': [
          {'key': 'movie_id', 'value': '{{id}}'},
        ],
        'action': {'actionType': 'navigate', 'routeName': 'detail_screen'},
      }),
      child: StacClipRRect(
        borderRadius: StacBorderRadius.all(6),
        child: StacImage(
          imageType: StacImageType.network,
          src: '${AppApi.imageBaseUrl}/{{poster_path}}',
          width: 108,
          height: 164,
        ),
      ),
    ).toJson(),
  };

  // Create a StacWidget with the JSON data
  return StacWidget(jsonData: templateJson);
}
