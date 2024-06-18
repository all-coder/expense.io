import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj_13/models/expense_model.dart';
import '../models/dummydata.dart';
import '../widgets/expense_tile.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
  }
}

final text = ["Yesterday", "Today"];
final Map<String, List<ExpenseModel>> obj = {
  "Yesterday": yesterdayDummyList,
  "Today": todayDummyList
};

class _ExpenseState extends State<Expense> {
  final pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: obj.length,
      itemBuilder: (context, index) {
        return SingleChildScrollView(
          child: Column(
            children: [
              //for giving space between the sliver space bar and content following it.
              const SizedBox(
                height: 15,
              ),
              Text(
                text[index],
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 35,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
              ...obj[text[index]]!.map((item) {
                return ExpenseTile(expenseObj: item);
              })
            ],
          ),
        );
      },
    );
  }
}
