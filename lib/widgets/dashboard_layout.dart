import 'package:flutter/material.dart';
import 'package:res_dash_board/widgets/custom_drawer.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(flex: 1, child: CustomDrawer()),
        Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
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
