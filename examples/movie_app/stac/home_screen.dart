import 'package:movie_app/constants/app_constants.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel.dart';
import 'package:stac/stac_core.dart';

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
              _buildMovieSection(
                title: AppStrings.nowPlaying,
                request: StacNetworkRequest(
                  url: AppApi.getNowPlayingMoviesUrl(),
                  method: Method.get,
                ),
              ),
              _buildMovieSection(
                title: AppStrings.popularMovies,
                request: StacNetworkRequest(
                  url: AppApi.getPopularMoviesUrl(),
                  method: Method.get,
                ),
              ),
              _buildMovieSection(
                title: AppStrings.trendingMovies,
                request: StacNetworkRequest(
                  url: AppApi.getTrendingMoviesUrl(),
                  method: Method.get,
                ),
              ),
              _buildMovieSection(
                title: AppStrings.topRated,
                request: StacNetworkRequest(
                  url: AppApi.getTopRatedMoviesUrl(),
                  method: Method.get,
                ),
              ),
              _buildMovieSection(
                title: AppStrings.upcomingMovies,
                request: StacNetworkRequest(
                  url: AppApi.getUpcomingMoviesUrl(),
                  method: Method.get,
                ),
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

StacWidget _buildMovieSection({
  required String title,
  required StacNetworkRequest request,
}) {
  return StacDynamicDataProvider(
    id: title,
    request: request,
    targetPath: 'results',
    child: StacColumn(
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
              StacText(data: title, style: StacThemeData.textTheme.labelLarge),
            ],
          ),
        ),
        StacSizedBox(
          height: 164,
          child: StacTemplateBuilder(
            providerId: title,
            itemTemplate: _buildMoviePosterItem(),
            child: StacListView(
              scrollDirection: StacAxis.horizontal,
              shrinkWrap: true,
              separator: StacSizedBox(width: 8),
              padding: StacEdgeInsets.only(left: 16),
            ),
          ),
        ),
      ],
    ),
  );
}

StacWidget _buildMoviePosterItem() {
  return StacGestureDetector(
    onTap: StacSetValueAction(
      values: [
        {'key': 'movie_id', 'value': '{{id}}'},
      ],
      action: StacNavigator.pushStac('detail_screen'),
    ),
    child: StacClipRRect(
      borderRadius: StacBorderRadius.all(6),
      child: StacImage(
        imageType: StacImageType.network,
        src: '${AppApi.imageBaseUrl}/{{poster_path}}',
        width: 108,
        height: 164,
      ),
    ),
  );
}
