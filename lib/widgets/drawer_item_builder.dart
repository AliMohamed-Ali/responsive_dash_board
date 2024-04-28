import 'package:flutter/material.dart';
import 'package:res_dash_board/models/drawer_item_model.dart';
import 'package:res_dash_board/utils/app_images.dart';
import 'package:res_dash_board/widgets/custom_drawer_item.dart';

class DrawerItemBuilder extends StatefulWidget {
  const DrawerItemBuilder({super.key});

  @override
  State<DrawerItemBuilder> createState() => _DrawerItemBuilderState();
}

class _DrawerItemBuilderState extends State<DrawerItemBuilder> {
  int currentIndex = 0;
  final List<DrawerItemModel> drawerItems = const [
    DrawerItemModel(image: Assets.imagesDashboard, title: "Dashboard"),
    DrawerItemModel(image: Assets.imagesMyTransctions, title: "My Transaction"),
    DrawerItemModel(image: Assets.imagesStatistics, title: "Statistics"),
    DrawerItemModel(image: Assets.imagesWalletAccount, title: "Wallet Account"),
    DrawerItemModel(image: Assets.imagesMyInvestments, title: "My Investments"),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemBuilder: (context, index) => GestureDetector(
        onTap: () {
          if (currentIndex == index) return;
          setState(() {
            currentIndex = index;
          });
        },
        child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: CustomDrawerItem(
              drawerItemModel: drawerItems[index],
              isActive: currentIndex == index,
            )),
      ),
      itemCount: drawerItems.length,
    );
  }
}
