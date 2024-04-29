import 'package:flutter/material.dart';
import 'package:res_dash_board/widgets/all_expenses.dart';
import 'package:res_dash_board/widgets/custom_drawer.dart';
import 'package:res_dash_board/widgets/quick_invoice.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDrawer()),
        const SizedBox(width: 32),
        const Expanded(
            flex: 2,
            child: Column(
              children: [
                SizedBox(height: 40),
                AllExpenses(),
                SizedBox(height: 24),
                QuickInvoice()
              ],
            )),
        Expanded(
            flex: 2,
            child: Container(
              color: Colors.grey,
            )),
      ],
    );
  }
}
