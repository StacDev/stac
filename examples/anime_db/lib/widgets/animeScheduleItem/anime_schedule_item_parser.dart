import 'package:flutter/material.dart';
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
      height: 112,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.all(Radius.circular(4)),
            child: Stack(
              children: [
                Image.network(
                  model.bannerImgUrl != "{{media.bannerImage}}" ? model.bannerImgUrl ?? model.coverImgUrl : model.coverImgUrl,
                  fit: BoxFit.cover,
                  height: 64,
                  width: double.maxFinite,
                ),
                getStatusView(airStatus, context),
              ],
            ),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            model.title,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          Text(
            "${DateFormat(DateFormat.HOUR24_MINUTE).format(DateTime.fromMillisecondsSinceEpoch((int.tryParse(model.airingTime)?? 0)*1000))} · Episode ${model.episode}",
            style: Theme.of(context).textTheme.labelSmall?.apply(color: Theme.of(context).colorScheme.onSurfaceVariant),
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