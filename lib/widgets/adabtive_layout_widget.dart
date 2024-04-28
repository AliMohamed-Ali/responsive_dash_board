import 'package:flutter/material.dart';

class AdabtiveLayout extends StatelessWidget {
  const AdabtiveLayout(
      {super.key,
      required this.mobilelayout,
      required this.tabletlayout,
      required this.desktoplayout});
  final WidgetBuilder mobilelayout, tabletlayout, desktoplayout;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrain) {
      if (constrain.maxWidth < 600) {
        return mobilelayout(context);
      } else if (constrain.maxWidth < 900) {
        return tabletlayout(context);
      } else {
        return desktoplayout(context);
      }
    });
  }
}
