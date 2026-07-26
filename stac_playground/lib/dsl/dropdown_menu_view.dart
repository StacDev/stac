import 'package:stac_core/stac_core.dart';

@StacScreen(screenName: 'dropdown_menu_view')
StacWidget dropdownMenuViewExample() {
  return StacScaffold(
    appBar: StacAppBar(title: StacText(data: 'Stac DropDown')),
    body: StacColumn(
      children: [
        StacDropdownMenu(
          leadingIcon: StacIcon(
            iconType: StacIconType.material,
            icon: 'arrow_downward',
            size: 32,
          ),
          trailingIcon: StacIcon(
            iconType: StacIconType.material,
            icon: 'double_arrow',
            size: 32,
          ),
          initialSelection: 'b',
          dropdownMenuEntries: [
            StacDropdownMenuEntry(
              label: 'A',
              value: 'a',
              leadingIcon: StacIcon(
                iconType: StacIconType.material,
                icon: 'arrow_downward_sharp',
                size: 32,
              ),
              trailingIcon: StacIcon(
                iconType: StacIconType.material,
                icon: 'arrow_forward_ios',
                size: 32,
              ),
            ),
            StacDropdownMenuEntry(
              label: 'B',
              value: 'b',
              leadingIcon: StacIcon(
                iconType: StacIconType.material,
                icon: 'arrow_downward_sharp',
                size: 32,
              ),
              trailingIcon: StacIcon(
                iconType: StacIconType.material,
                icon: 'arrow_forward_ios',
                size: 32,
              ),
            ),
          ],
        ),
      ],
    ),
  );
}
