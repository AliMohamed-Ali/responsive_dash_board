import 'package:flutter/material.dart';
import 'package:res_dash_board/models/all_expanses_item_model.dart';
import 'package:res_dash_board/utils/app_images.dart';
import 'package:res_dash_board/widgets/all_expanses_item.dart';

class AllExpansesBody extends StatefulWidget {
  const AllExpansesBody({super.key});

  @override
  State<AllExpansesBody> createState() => _AllExpansesBodyState();
}

class _AllExpansesBodyState extends State<AllExpansesBody> {
  int currentItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => currentItem = 0),
            child: AllExpensesItem(
              allExpensesItemModel: const AllExpensesItemModel(
                  image: Assets.imagesBalance,
                  title: "Balance",
                  date: "April 2022",
                  amount: "10.00"),
              isActive: currentItem == 0,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => currentItem = 1),
            child: AllExpensesItem(
              allExpensesItemModel: const AllExpensesItemModel(
                  image: Assets.imagesIncome,
                  title: "Income",
                  date: "April 2022",
                  amount: "20.19"),
              isActive: currentItem == 1,
            ),
          ),
        ),
        const SizedBox(width: 20),
        Expanded(
          child: GestureDetector(
            onTap: () => setState(() => currentItem = 2),
            child: AllExpensesItem(
              allExpensesItemModel: const AllExpensesItemModel(
                  image: Assets.imagesExpenses,
                  title: "Expenses",
                  date: "April 2022",
                  amount: "30.00"),
              isActive: currentItem == 2,
            ),
          ),
        ),
      ],
    );
  }
}
