import 'package:flutter/material.dart';
import 'package:res_dash_board/models/drawer_item_model.dart';
import 'package:res_dash_board/utils/app_images.dart';
import 'package:res_dash_board/widgets/custom_drawer_item.dart';
import 'package:res_dash_board/widgets/custom_user_info_tile.dart';
import 'package:res_dash_board/widgets/drawer_item_builder.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Container(
        color: Colors.white,
        child: const CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: CustomUserInfoTile(
                image: Assets.imagesAvatar1,
                title: "Ali Mohamd",
                subtitle: "elsayedalil3632@gmail.com",
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 8)),
            DrawerItemBuilder(),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Expanded(child: SizedBox()),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CustomDrawerItem(
                        drawerItemModel: DrawerItemModel(
                            title: "Setting system",
                            image: Assets.imagesSettings),
                        isActive: false),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: CustomDrawerItem(
                        drawerItemModel: DrawerItemModel(
                            title: "Logout account",
                            image: Assets.imagesLogout),
                        isActive: false),
                  ),
                  SizedBox(height: 48)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
