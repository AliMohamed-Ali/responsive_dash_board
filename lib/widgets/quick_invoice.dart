import 'package:flutter/material.dart';
import 'package:res_dash_board/utils/app_styles.dart';
import 'package:res_dash_board/widgets/custom_container.dart';
import 'package:res_dash_board/widgets/quick_invoice_header.dart';
import 'package:res_dash_board/widgets/quick_invoice_list_view.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuickInvoiceHeader(),
        SizedBox(height: 24),
        Text(
          "Latest Transaction",
          style: AppStyles.styleMedium16,
        ),
        QuickInvoiceListView(),
      ],
    ));
  }
}
