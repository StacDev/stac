import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/widgets/anime_upcoming/anime_upcoming.dart';
import 'package:stac/stac.dart';

class AnimeUpcomingParser extends StacParser<AnimeUpcoming> {
  const AnimeUpcomingParser();

  @override
  String get type => 'animeUpcoming';

  @override
  AnimeUpcoming getModel(Map<String, dynamic> json) =>
      AnimeUpcoming.fromJson(json);

  @override
  Widget parse(BuildContext context, AnimeUpcoming model) {
    return FutureBuilder(
      future: StacNetworkService.request(context, model.request),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          final animeData = snapshot.data?.data['data']['Page']['airingSchedules'] as List;
          return AnimeUpcomingWidget(airSchedule: animeData);
        }
        return const SizedBox(height: 124, child: Center(child: CircularProgressIndicator()),);
      },
    );
  }
}

class AnimeUpcomingWidget extends StatefulWidget {
  const AnimeUpcomingWidget({super.key, required this.airSchedule});

  final List<dynamic> airSchedule;

  @override
  State<AnimeUpcomingWidget> createState() => _AnimeUpcomingWidgetState();
}

class _AnimeUpcomingWidgetState extends State<AnimeUpcomingWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 124,
        child: ListView.separated(
            itemCount: widget.airSchedule.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 20),
            separatorBuilder: (BuildContext context, int index) => SizedBox(width: 12,),
            itemBuilder: (BuildContext context, int position) {
              return Container(
                width: 300,
                padding: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Theme.of(context).colorScheme.outlineVariant.withAlpha(30),
                ),
                child: Stack(
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(3),
                          child: Image.network(
                            widget.airSchedule[position]['media']['bannerImage'] ?? widget.airSchedule[position]['media']['coverImage']['extraLarge'],
                            fit: BoxFit.cover,
                            height: double.maxFinite,
                            width: double.maxFinite,
                          )
                      ),
                      Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(3), bottomRight: Radius.circular(3)),
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  stops: [0.0, 0.5, 1.0],
                                  colors: [
                                    Theme.of(context).colorScheme.surface.withAlpha(0),
                                    Theme.of(context).colorScheme.surface.withAlpha(204),
                                    Theme.of(context).colorScheme.surface.withAlpha(255),
                                  ]
                              )
                            ),
                            child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    widget.airSchedule[position]['media']['title']['romaji'],
                                    overflow: TextOverflow.ellipsis,
                                    style: Theme.of(context).textTheme.titleMedium,
                                  ),
                                  Text(
                                    "${DateFormat(DateFormat.HOUR24_MINUTE).format(DateTime.fromMillisecondsSinceEpoch(widget.airSchedule[position]["airingAt"]*1000))} · Episode ${widget.airSchedule[position]["episode"]}",
                                    style: Theme.of(context).textTheme.labelSmall?.apply(color: Theme.of(context).colorScheme.onSurfaceVariant),
                                  ),
                                ],
                              ),
                            ),
                          )
                      ),

                    ],
                ),
              );
            })
    );
  }
}