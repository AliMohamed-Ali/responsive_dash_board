import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:res_dash_board/models/user_info_model.dart';
import 'package:res_dash_board/utils/app_styles.dart';

class CustomUserInfoTile extends StatelessWidget {
  const CustomUserInfoTile(
      {super.key,
      required this.userInfoModel});

  final UserInfoModel userInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
         userInfoModel.image,
          width: 30,
        ),
        title: Text(userInfoModel.title, style: AppStyles.styleSemiBold16),
        subtitle: Text(userInfoModel.subtitle, style: AppStyles.styleReqular12),
      ),
    );
  }
}
