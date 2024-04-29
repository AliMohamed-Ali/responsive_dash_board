import 'package:flutter/material.dart';
import 'package:res_dash_board/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quick Invoice",
          style: AppStyles.styleSemiBold20,
        ),
        CircleAvatar(
          backgroundColor: Color(0xFFF1F1F1),
          child: Icon(
            Icons.add,
            size: 18,
            color: Color(0xFF4EB7F2),
          ),
        )
      ],
    );
  }
}
