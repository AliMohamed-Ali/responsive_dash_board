import 'package:flutter/material.dart';
import 'package:res_dash_board/widgets/all_expanses_body.dart';
import 'package:res_dash_board/widgets/all_expanses_header.dart';
import 'package:res_dash_board/widgets/custom_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  // static const List<AllExpensesItemModel> allExpensesItem = [
  @override
  Widget build(BuildContext context) {
    return const CustomContainer(
      child: Column(
        children: [
          AllExpansesHeader(),
          SizedBox(height: 16),
          AllExpansesBody(),
        ],
      ),
    );
  }
}
