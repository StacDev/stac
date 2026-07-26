import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'snackbar')
StacWidget snackbarExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'SnackBar')),
    body: StacCenter(
      child: StacElevatedButton(
        onPressed: StacSnackBar(
          content: StacText(data: 'This is a Snackbar').toJson(),
          behavior: StacSnackBarBehavior.floating,
        ),
        child: StacText(data: 'Show SnackBar'),
      ),
    ),
  );
}
