import 'package:flutter/material.dart';
import 'package:res_dash_board/models/user_info_model.dart';
import 'package:res_dash_board/utils/app_images.dart';
import 'package:res_dash_board/widgets/custom_user_info_tile.dart';

class QuickInvoiceListView extends StatelessWidget {
  const QuickInvoiceListView({super.key});
  static List<UserInfoModel> userList = const [
    UserInfoModel(
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesAvatar1),
    UserInfoModel(
        title: "Madrani Andi",
        subtitle: "Madraniadi20@gmail",
        image: Assets.imagesAvatar1),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        return CustomUserInfoTile(userInfoModel: userList[index]);
      },
      itemCount: userList.length,
    );
  }
}
