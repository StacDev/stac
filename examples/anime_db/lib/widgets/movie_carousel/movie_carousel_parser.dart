import 'package:flutter/material.dart';
import 'package:movie_app/widgets/movie_carousel/movie_carousel.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:stac/stac.dart';

class MovieCarouselParser extends StacParser<MovieCarousel> {
  const MovieCarouselParser();

  @override
  String get type => 'movieCarousel';

  @override
  MovieCarousel getModel(Map<String, dynamic> json) =>
      MovieCarousel.fromJson(json);

  @override
  Widget parse(BuildContext context, MovieCarousel model) {
    return FutureBuilder(
      future: StacNetworkService.request(context, model.request),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          final movieData = snapshot.data?.data['results'] as List;
          return MovieCarouselWidget(movies: movieData.take(5).toList());
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

class MovieCarouselWidget extends StatefulWidget {
  const MovieCarouselWidget({super.key, required this.movies});

  final List<dynamic> movies;

  @override
  State<MovieCarouselWidget> createState() => _MovieCarouselWidgetState();
}

class _MovieCarouselWidgetState extends State<MovieCarouselWidget> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 560,
      child: Stack(
        children: [
          PageView.builder(
            controller: pageController,
            itemCount: widget.movies.length,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Image.network(
                    'https://media.themoviedb.org/t/p/w440_and_h660_face/${widget.movies[index]['poster_path']}',
                    fit: BoxFit.cover,
                    height: double.maxFinite,
                    width: double.maxFinite,
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.transparent, Colors.black],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.movies[index]['title'],
                            style: Theme.of(context).textTheme.displaySmall,
                            textAlign: TextAlign.center,
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FilledButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    const Icon(
                                      Icons.play_circle_fill,
                                      size: 24,
                                    ),
                                    const SizedBox(width: 8),
                                    const Text('Watch Trailer'),
                                  ],
                                ),
                              ),
                              const SizedBox(width: 16),
                              OutlinedButton(
                                onPressed: () {},
                                child: Row(
                                  children: [
                                    const Icon(Icons.list, size: 24),
                                    const SizedBox(width: 8),
                                    const Text('Details'),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 48),
                        ],
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
          Positioned(
            bottom: 16,
            right: 0,
            left: 0,
            child: Center(
              child: SmoothPageIndicator(
                controller: pageController,
                count: widget.movies.length,
                effect: ExpandingDotsEffect(
                  dotWidth: 8,
                  dotHeight: 8,
                  dotColor: Theme.of(
                    context,
                  ).colorScheme.onSurface.withAlpha(104),
                  activeDotColor: Theme.of(context).colorScheme.primary,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
