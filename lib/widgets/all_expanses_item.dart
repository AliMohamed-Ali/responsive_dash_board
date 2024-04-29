import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:res_dash_board/models/all_expanses_item_model.dart';
import 'package:res_dash_board/utils/app_styles.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
    required this.isActive,
  });
  final AllExpensesItemModel allExpensesItemModel;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16),
      decoration: BoxDecoration(
          color: isActive ? const Color(0xFF4EB7F2) : Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(width: 1, color: const Color(0xFFF1F1F1))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundColor: isActive
                    ? Colors.white.withOpacity(0.1)
                    : const Color(0xFFF1F1F1),
                radius: 30,
                child: SvgPicture.asset(
                  allExpensesItemModel.image,
                  colorFilter: ColorFilter.mode(
                      isActive ? Colors.white : const Color(0xFF4EB7F2),
                      BlendMode.srcIn),
                ),
              ),
              Icon(
                Icons.keyboard_arrow_right_sharp,
                color: isActive ? Colors.white : const Color(0xFF064060),
              ),
            ],
          ),
          const SizedBox(height: 34),
          Text(
            allExpensesItemModel.title,
            style: isActive
                ? AppStyles.styleSemiBold16.copyWith(color: Colors.white)
                : AppStyles.styleSemiBold16,
          ),
          const SizedBox(height: 8),
          Text(
            allExpensesItemModel.date,
            style: isActive
                ? AppStyles.styleReqular14.copyWith(color: Colors.white)
                : AppStyles.styleReqular14,
          ),
          const SizedBox(height: 16),
          Text(
            "\$${allExpensesItemModel.amount}",
            style: isActive
                ? AppStyles.styleSemiBold24.copyWith(color: Colors.white)
                : AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
