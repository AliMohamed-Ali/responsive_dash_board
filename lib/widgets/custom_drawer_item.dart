import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:res_dash_board/models/drawer_item_model.dart';
import 'package:res_dash_board/utils/app_styles.dart';

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem(
      {super.key, required this.drawerItemModel, required this.isActive});
  final DrawerItemModel drawerItemModel;
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        drawerItemModel.image,
        width: 30,
      ),
      title: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Text(drawerItemModel.title,
            style: isActive ? AppStyles.styleBold16 : AppStyles.styleReqular16),
      ),
      trailing: isActive
          ? Container(
              height: double.infinity,
              width: 5,
              color: const Color(0xFF4EB7F2),
            )
          : const SizedBox.shrink(),
    );
  }
}
