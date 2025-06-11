import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';
import 'package:movie_app/widgets/animeScheduleItem/anime_schedule_item.dart';
import 'package:stac/stac.dart';

class AnimeScheduleItemParser extends StacParser<AnimeScheduleItem> {
  const AnimeScheduleItemParser();

  @override
  String get type => 'animeScheduleItem';

  @override
  AnimeScheduleItem getModel(Map<String, dynamic> json) =>
      AnimeScheduleItem.fromJson(json);

  @override
  Widget parse(BuildContext context, AnimeScheduleItem model) {
    var airStatus = 1;
    var timeUntilAiring = int.parse(model.airingTime) - (DateTime.now().millisecondsSinceEpoch/1000);
    if(timeUntilAiring < 1) {
      if (timeUntilAiring * -1 < (int.tryParse(model.duration ?? "24") ?? 24)*60) {
        airStatus = 0;
      } else {
        airStatus = -1;
      }
    }
    return SizedBox(
      height: 62,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(6)),
            child: Container(
              color: Theme.of(context).colorScheme.surface,
              height: 54,
              padding: EdgeInsets.all(1),
              foregroundDecoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                      color: airStatus == 0 ? Theme.of(context).colorScheme.primary : Theme.of(context).colorScheme.outline.withAlpha(20),
                      width: 1
                  )
              ),
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(topLeft: Radius.circular(5), bottomLeft: Radius.circular(5)),
                        child: Image.network(
                          model.coverImgUrl,
                          fit: BoxFit.cover,
                          width: 50,
                        ),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                model.title,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context).textTheme.bodySmall?.apply(fontWeightDelta: 2, letterSpacingDelta: -0.1,),
                              ),
                              Text(
                                "${DateFormat(DateFormat.HOUR24_MINUTE).format(DateTime.fromMillisecondsSinceEpoch((int.tryParse(model.airingTime) ?? 0) * 1000))} · Episode ${model.episode}",
                                style: Theme.of(context).textTheme.bodySmall?.apply(color: Theme.of(context).colorScheme.onSurfaceVariant.withAlpha(166)),
                              ),
                            ],
                          )
                      ),
                      SizedBox(
                        width: 12,
                      ),
                    ],
                  ),
                  Positioned(
                      bottom: 8,
                      right: 0,
                      child: Visibility(
                          visible: airStatus == 0,
                          child: Container(
                            color: Theme.of(context).colorScheme.primary,
                            height: 16.5,
                            padding: EdgeInsets.symmetric(horizontal: 5),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(
                                  "assets/images/play-pause-fill.svg",
                                  colorFilter: ColorFilter.mode(Theme.of(context).colorScheme.surface, BlendMode.srcIn),
                                  height: 16,
                                  width: 16,
                                ),
                                const SizedBox(width: 4,),
                                Text(
                                    "Airing",
                                    style: TextStyle(
                                        fontFamily: "Figtree",
                                        fontWeight: FontWeight.w700,
                                        color: Theme.of(context).colorScheme.surface,
                                        fontSize: 12,
                                        height: 1.3,
                                        letterSpacing: 0
                                    )
                                ),
                              ],
                            ),
                          )
                      )
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
        ],
      )
    );
  }

  Widget getStatusView(int airStatus, BuildContext context) {
    if(airStatus != 1) {
      return Container(
        color: airStatus == -1 ? Theme.of(context).colorScheme.surface.withAlpha(204) : Theme.of(context).colorScheme.primary,
        height: 18,
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              airStatus == -1 ? Icons.bedtime : Icons.skip_next,
              color: airStatus == -1 ? Theme.of(context).colorScheme.onSurface : Theme.of(context).colorScheme.onPrimary,
              size: 12,
            ),
            SizedBox(width: 2,),
            Text(
              airStatus == -1 ? "Aired" : "Airing Now",
              style: Theme.of(context).textTheme.labelSmall?.apply(color: airStatus == -1 ? Theme.of(context).colorScheme.onSurface : Theme.of(context).colorScheme.onPrimary),
            )
          ],
        ),
      );
    } else {
      return SizedBox();
    }
  }
}