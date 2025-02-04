import 'package:flutter/material.dart';

<<<<<<< HEAD:lib/general_widgets/menu_item_tile.dart
import '../ui/shared/colors.dart';
=======
import '../../../utilities/constants/colors.dart';
>>>>>>> d476182eedbf5d11d9f89825370f6df78a7f0ad6:lib/ui/shared/dumb_widgets/menu_item_tile.dart

enum _TileType { normal, icon, flipSwitch }

class MenuItemTile extends StatelessWidget {
  const MenuItemTile({
    this.onPressed,
    this.iconColor,
    this.ico,
    this.text,
    this.icon,
    this.imageIcon,
    this.subtitle,
    this.value = false,
    this.bottomBorder = false,
    this.onChanged,
    this.topBorder = true,
    Key? key,
  })  : _tileType = _TileType.normal,
        super(key: key);

  const MenuItemTile.icon({
    this.onPressed,
    this.ico,
    this.iconColor,
    this.text,
    this.icon,
    this.imageIcon,
    this.subtitle,
    this.onChanged,
    this.value = false,
    this.bottomBorder = false,
    this.topBorder = true,
    Key? key,
  })  : _tileType = _TileType.icon,
        super(key: key);

  const MenuItemTile.flipSwitch({
    this.onPressed,
    this.iconColor,
    this.ico,
    this.text,
    this.subtitle,
    this.icon,
    this.imageIcon,
    required this.onChanged,
    required this.value,
    Key? key,
    this.bottomBorder = false,
    this.topBorder = true,
  })  : _tileType = _TileType.flipSwitch,
        super(key: key);

  final Text? text;
  final Widget? icon;
  final String? imageIcon;
  final void Function()? onPressed;
  final void Function(bool)? onChanged;
  final _TileType _tileType;
  final String? subtitle;
  final bool bottomBorder;
  final bool topBorder;
  final bool value;
  final Color? iconColor;
  final IconData? ico;

  Widget? selectIcon() {
    if (ico == null && icon == null && imageIcon == null) {
      return null;
    } else if (icon != null) {
      return icon;
    } else {
      return Image.asset('$imageIcon');
    }
  }

  @override
  Widget build(BuildContext context) {
    switch (_tileType) {
      case _TileType.normal:
        return ListTile(
          title: text,
          subtitle: subtitle != null ? Text(subtitle ?? '') : null,
          dense: true,
          visualDensity: const VisualDensity(horizontal: 0.0, vertical: 0),
          onTap: onPressed,
          shape: Border(
            top: BorderSide(
              width: .5,
              color: topBorder ? AppColors.greyishColor : Colors.transparent,
            ),
            bottom: BorderSide(
              width: .5,
              color: bottomBorder ? AppColors.greyishColor : Colors.transparent,
            ),
          ),
          leading: selectIcon(),
          horizontalTitleGap: 0,
          contentPadding: icon != null ? const EdgeInsets.all(1) : null,
        );

      case _TileType.icon:
        return ListTile(
          onTap: onPressed,
          title: text,
          subtitle: subtitle != null ? Text(subtitle ?? '') : null,
          trailing: selectIcon(),
          shape: Border(
            top: BorderSide(
              width: .5,
              color: topBorder ? AppColors.greyishColor : Colors.transparent,
            ),
            bottom: BorderSide(
              width: .5,
              color: bottomBorder ? AppColors.greyishColor : Colors.transparent,
            ),
          ),
        );

      case _TileType.flipSwitch:
        return SwitchListTile(
          value: value,
          onChanged: onChanged,
          shape: Border(
            top: BorderSide(
              width: .5,
              color: topBorder ? AppColors.greyishColor : Colors.transparent,
            ),
            bottom: BorderSide(
              width: .5,
              color: bottomBorder ? AppColors.greyishColor : Colors.transparent,
            ),
          ),
          activeColor: AppColors.paleGreen,
          title: text,
          subtitle: subtitle != null ? Text(subtitle ?? '') : null,
        );
    }
  }
}
