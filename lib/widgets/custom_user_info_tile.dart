import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:res_dash_board/utils/app_styles.dart';

class CustomUserInfoTile extends StatelessWidget {
  const CustomUserInfoTile(
      {super.key,
      required this.image,
      required this.title,
      required this.subtitle});
  final String image, title, subtitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFFFAFAFA),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(
          image,
          width: 30,
        ),
        title: Text(title, style: AppStyles.styleSemiBold16),
        subtitle: Text(subtitle, style: AppStyles.styleReqular12),
      ),
    );
  }
}
