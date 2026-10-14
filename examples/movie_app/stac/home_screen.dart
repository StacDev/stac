import 'package:movie_app/constants/app_constants.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel.dart';
import 'package:stac/stac_core.dart';

@StacScreen(screenName: 'home_screen')
StacWidget homeScreen() {
  return StacDefaultNavigationController(
    length: 3,
    child: StacScaffold(
      extendBodyBehindAppBar: true,
      body: StacNavigationView(
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
              _movieSection(
                id: 'nowPlaying',
                title: AppStrings.nowPlaying,
                url: AppApi.getNowPlayingMoviesUrl(),
              ),
              _movieSection(
                id: 'popular',
                title: AppStrings.popularMovies,
                url: AppApi.getPopularMoviesUrl(),
              ),
              _movieSection(
                id: 'trending',
                title: AppStrings.trendingMovies,
                url: AppApi.getTrendingMoviesUrl(),
              ),
              _movieSection(
                id: 'topRated',
                title: AppStrings.topRated,
                url: AppApi.getTopRatedMoviesUrl(),
              ),
              _movieSection(
                id: 'upcoming',
                title: AppStrings.upcomingMovies,
                url: AppApi.getUpcomingMoviesUrl(),
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

/// A titled row of posters for the movies at [url].
///
/// A data provider named [id] loads the movies, and the list builds one
/// poster per movie. Tapping a poster opens the detail screen with the
/// movie's id as an argument.
StacWidget _movieSection({
  required String id,
  required String title,
  required String url,
}) {
  return StacColumn(
    children: [
      StacPadding(
        padding: StacEdgeInsets.only(left: 16, right: 16, top: 24, bottom: 10),
        child: StacRow(
          mainAxisAlignment: StacMainAxisAlignment.spaceBetween,
          children: [
            StacText(data: title, style: StacThemeData.textTheme.labelLarge),
          ],
        ),
      ),
      StacSizedBox(
        height: 164,
        child: StacDataProvider(
          id: id,
          request: StacNetworkRequest(url: url, method: Method.get),
          targetPath: 'results',
          loaderWidget: StacCenter(child: StacCircularProgressIndicator()),
          child: StacListView(
            scrollDirection: StacAxis.horizontal,
            shrinkWrap: true,
            separator: StacSizedBox(width: 8),
            padding: StacEdgeInsets.only(left: 16),
            items: '{{$id.data}}',
            keyPath: 'id',
            itemTemplate: _moviePoster(),
          ),
        ),
      ),
    ],
  );
}

/// A movie poster that opens the movie's detail screen.
StacWidget _moviePoster() {
  return StacGestureDetector(
    onTap: StacNavigator.pushStac(
      'detail_screen',
      arguments: {'movieId': '{{\$item.id}}'},
    ),
    child: StacClipRRect(
      borderRadius: StacBorderRadius.all(6),
      child: StacImage(
        imageType: StacImageType.network,
        src: '${AppApi.imageBaseUrl}/{{\$item.poster_path}}',
        width: 108,
        height: 164,
      ),
    ),
  );
}
