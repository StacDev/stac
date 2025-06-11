import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
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
          final animeData = snapshot.data?.data['data']['Page']['media'] as List;
          return MovieCarouselWidget(movies: animeData);
        }
        return const SizedBox(height: 223, child: Center(child: CircularProgressIndicator()),);
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
    return Column(
      children: [
        SizedBox(
          height: 424,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.movies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                child: Container(
                  foregroundDecoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      border: Border.all(
                          color: Theme.of(context).colorScheme.outline.withAlpha(20),
                          width: 1
                      )
                  ),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(1),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(5),
                          child: Image.network(
                            widget.movies[index]['coverImage']["extraLarge"],
                            fit: BoxFit.cover,
                            height: double.maxFinite,
                            width: double.maxFinite,
                          ),
                        ),
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: SizedBox(
                            height: 107,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(6), bottomRight: Radius.circular(6)),
                              child: BackdropFilter(
                                filter: ImageFilter.blur(sigmaX: 12, sigmaY: 12),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                      color: Theme.of(context).colorScheme.surface.withAlpha(230)
                                  ),
                                ),
                              ),
                            ),
                          )
                      ),
                      Positioned(
                        left: 16,
                        right: 16,
                        bottom: 16,
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.movies[index]['title']['romaji'],
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.titleSmall?.apply(fontWeightDelta: 2, letterSpacingDelta: -0.1),
                              ),
                              Text(
                                "${widget.movies[index]['season'].toString().toCapitalized} ${widget.movies[index]['seasonYear']} · ${widget.movies[index]['episodes'] ?? widget.movies[index]['nextAiringEpisode']['episode'] - 1} Episodes",
                                style: Theme.of(context).textTheme.bodyMedium?.apply(color: Theme.of(context).colorScheme.onSurfaceVariant.withAlpha(166)),
                              ),
                              SizedBox(height: 7.5),
                              Row(
                                  children: getPills(widget.movies[index])
                              )
                            ]
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 16,),
        Padding(
          padding: EdgeInsets.fromLTRB(16,0,16,0),
          child: Row(
            children: [
              Expanded(child: Container(
                height: 1,
                color: Theme.of(context).colorScheme.outline.withAlpha(20),
              )),
              SizedBox(width: 8,),
              SmoothPageIndicator(
                controller: pageController,
                count: widget.movies.length,
                effect: ColorTransitionEffect(
                  dotWidth: 24,
                  dotHeight: 2,
                  dotColor: Theme.of(context,).colorScheme.outlineVariant.withAlpha(30),
                  activeDotColor: Theme.of(context).colorScheme.primary,
                ),
              ),
              SizedBox(width: 8,),
              Expanded(child: Container(
                height: 1,
                color: Theme.of(context).colorScheme.outline.withAlpha(20),
              ))
            ],
          ),
        )
      ],
    );
  }

  List<Widget> getPills(dynamic anime) {

    List<Widget> pills = [];

    pills.add(Container(
      height: 21.5,
      padding: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(2)),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            "assets/images/star.svg",
            colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.surface, BlendMode.srcIn),
            height: 11,
            width: 12,
          ),
          const SizedBox(width: 4,),
          Text(
            "${anime['averageScore']/10}",
            style: Theme.of(context).textTheme.bodySmall?.apply(color: Theme.of(context).colorScheme.onPrimary, fontWeightDelta: 2, letterSpacingDelta: -0.1),
          ),
        ],
      ),
    ));
    for(var i = 0; i < 3; i++){
      try {
        if (anime["genres"][i] != null) {
          pills.add(SizedBox(width: 6,));
          pills.add(Container(
              height: 20,
              padding: EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(2)),
                color: Theme.of(context).colorScheme.primary,
              ),
              child:
              Center(
                child: Text(
                  "${anime['genres'][i]}",
                  style: Theme.of(context).textTheme.bodySmall?.apply(color: Theme.of(context).colorScheme.onPrimary, fontWeightDelta: 2, letterSpacingDelta: -0.1),
                ),
              )
          ));
        }
      } on RangeError catch (e) {
        e.stackTrace;
      }
    }
    return pills;
  }
}

extension StringCasingExtension on String {
  String get toCapitalized => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String get toTitleCase => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized).join(' ');
}
