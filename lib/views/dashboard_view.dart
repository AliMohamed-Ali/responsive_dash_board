
import 'package:flutter/material.dart';
import 'package:res_dash_board/widgets/adabtive_layout_widget.dart';
import 'package:res_dash_board/widgets/dashboard_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdabtiveLayout(
        desktoplayout: (context) => const DashboardLayout(),
        mobilelayout: (context) => const SizedBox(),
        tabletlayout: (context) => const SizedBox(),
      ),
    );
  }
}
