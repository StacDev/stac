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
    var brightness = MediaQuery.of(context).platformBrightness;
    bool isDarkMode = brightness == Brightness.dark;

    return Column(
      children: [
        SizedBox(
          height: 198,
          child: PageView.builder(
            controller: pageController,
            itemCount: widget.movies.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                child: Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                      color: Color(isDarkMode ? 0xFF101214 : 0xFFF4F6FA),
                      border: Border.all(
                          color: Color(isDarkMode ? 0xFFFFFF : 0x010810).withAlpha(30),
                          width: 1
                      )
                  ),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(4),
                          child: Image.network(
                            widget.movies[index]['bannerImage'] ?? widget.movies[index]['coverImage']["extraLarge"],
                            fit: BoxFit.cover,
                            height: 66,
                            width: double.maxFinite,
                          ),
                        ),
                        SizedBox(height: 16,),
                        Text(
                          widget.movies[index]['title']['romaji'],
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        Text(
                          "${widget.movies[index]['season'].toString().toCapitalized} ${widget.movies[index]['seasonYear']} · ${widget.movies[index]['episodes']} Episodes",
                          style: Theme.of(context).textTheme.bodyMedium?.apply(color: Theme.of(context).colorScheme.onSurfaceVariant),
                        ),
                        SizedBox(height: 12,),
                        Row(
                          children: getPills(widget.movies[index])
                        )
                      ]
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 24,),
        Padding(
          padding: EdgeInsets.fromLTRB(20,0,18,0),
          child: Row(
            children: [
              SmoothPageIndicator(
                controller: pageController,
                count: widget.movies.length,
                effect: ExpandingDotsEffect(
                  expansionFactor: 2,
                  dotWidth: 12,
                  dotHeight: 1.5,
                  dotColor: Theme.of(context,).colorScheme.onSurface.withAlpha(102),
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
      height: 20,
      padding: EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(2)),
        color: Theme.of(context).colorScheme.primary,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(Icons.star, color: Theme.of(context).colorScheme.surface, size: 12,),
          const SizedBox(width: 4,),
          Text(
            "${anime['averageScore']}",
            style: Theme.of(context).textTheme.labelMedium?.apply(color: Theme.of(context).colorScheme.onPrimary),
          ),
        ],
      ),
    ));
    for(var i = 0; i < 2; i++){
      if(anime["genres"][i] != null) {
        pills.add(SizedBox(width: 6,));
        pills.add(Container(
          height: 20,
          padding: EdgeInsets.symmetric(horizontal: 6),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(2)),
            color: Theme.of(context).colorScheme.primary,
          ),
          child:
              Text(
                "${anime['genres'][i]}",
                style: Theme.of(context).textTheme.labelMedium?.apply(color: Theme.of(context).colorScheme.onPrimary),
              ),
        ));
      }
    }
    return pills;
  }
}

extension StringCasingExtension on String {
  String get toCapitalized => length > 0 ?'${this[0].toUpperCase()}${substring(1).toLowerCase()}':'';
  String get toTitleCase => replaceAll(RegExp(' +'), ' ').split(' ').map((str) => str.toCapitalized).join(' ');
}
