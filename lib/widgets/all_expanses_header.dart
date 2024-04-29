import 'package:flutter/material.dart';
import 'package:res_dash_board/utils/app_styles.dart';
import 'package:res_dash_board/widgets/range_option.dart';

class AllExpansesHeader extends StatelessWidget {
  const AllExpansesHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "All Expenses",
          style: AppStyles.styleSemiBold20,
        ),
        RangeOption()
      ],
    );
  }
}
