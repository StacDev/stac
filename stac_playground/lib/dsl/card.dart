import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'card')
StacWidget cardExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Cards')),
    body: StacColumn(
      mainAxisAlignment: StacMainAxisAlignment.start,
      crossAxisAlignment: StacCrossAxisAlignment.center,
      children: [
        StacSizedBox(height: 12),
        StacCard(
          elevation: 20,
          borderOnForeground: true,
          margin: StacEdgeInsets.only(top: 20, bottom: 20, right: 20, left: 20),
          child: StacListTile(
            leading: StacImage(
              src:
                  'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
              width: 50,
              height: 50,
            ),
            title: StacPadding(
              padding: StacEdgeInsets.only(top: 10),
              child: StacText(
                data: 'Prof. Richard Jhonson',
                style: StacTextStyle(fontSize: 21),
              ),
            ),
            subtitle: StacPadding(
              padding: StacEdgeInsets.only(top: 10, bottom: 10),
              child: StacText(
                data:
                    'Head of Department of Computer Science, The New York University Campus, Abu Dhabi, United Arab Emirates.',
                style: StacTextStyle(fontSize: 12),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
