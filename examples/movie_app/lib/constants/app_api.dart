/// Application API endpoints and configuration
///
/// This file contains all API-related constants including base URLs,
/// endpoints, and API configuration.
class AppApi {
  AppApi._(); // Private constructor to prevent instantiation

  // ============================================================================
  // Base Configuration
  // ============================================================================

  static const String baseUrl = 'https://api.themoviedb.org/3';
  static const String imageBaseUrl =
      'https://media.themoviedb.org/t/p/w440_and_h660_face';
  static const String language = 'en-US';

  // ============================================================================
  // Movie Endpoints
  // ============================================================================

  /// Trending movies endpoint for the current day
  static String getTrendingMoviesUrl([int page = 1]) =>
      '$baseUrl/trending/movie/day?language=$language&page=$page';

  /// Now playing movies endpoint
  static String getNowPlayingMoviesUrl([int page = 1]) =>
      '$baseUrl/movie/now_playing?language=$language&page=$page';

  /// Popular movies endpoint
  static String getPopularMoviesUrl([int page = 1]) =>
      '$baseUrl/movie/popular?language=$language&page=$page';

  /// Top rated movies endpoint
  static String getTopRatedMoviesUrl([int page = 1]) =>
      '$baseUrl/movie/top_rated?language=$language&page=$page';

  /// Upcoming movies endpoint
  static String getUpcomingMoviesUrl([int page = 1]) =>
      '$baseUrl/movie/upcoming?language=$language&page=$page';

  /// Movie details endpoint
  static String getMovieDetailsUrl(int movieId) =>
      '$baseUrl/movie/$movieId?language=$language';

  /// Movie credits endpoint
  static String getMovieCreditsUrl(int movieId) =>
      '$baseUrl/movie/$movieId/credits?language=$language';

  /// Similar movies endpoint
  static String getSimilarMoviesUrl(int movieId, [int page = 1]) =>
      '$baseUrl/movie/$movieId/similar?language=$language&page=$page';

  // ============================================================================
  // Image URLs
  // ============================================================================

  /// Get full poster image URL from poster path
  static String getPosterImageUrl(String posterPath) =>
      '$imageBaseUrl/$posterPath';

  /// Get full profile image URL from profile path
  static String getProfileImageUrl(String profilePath) =>
      '$imageBaseUrl/$profilePath';
}
