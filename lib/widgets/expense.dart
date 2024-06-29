import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj_13/models/expense_model.dart';
import '../models/dummydata.dart';
import '../widgets/expense_tile.dart';

class Expense extends StatefulWidget {
  //when the input to the Expense constructor changes, the widget automatically re-renders.
  const Expense(
      {super.key,
      required this.todayList,
      required this.yesterdayList,
      required this.deleteExpenseObject});
  final List<ExpenseModel> todayList;
  final List<ExpenseModel> yesterdayList;
  final Function deleteExpenseObject;
  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expense> {
  int getTotalSpending(List<ExpenseModel> list) {
    var totalSum = 0;
    //to get the total sum
    for (int i = 0; i < list.length; i++) {
      totalSum = totalSum + int.parse(list[i].amount);
    }
    return totalSum;
  }

  @override
  Widget build(BuildContext context) {
    final pageController = PageController(initialPage: 1);
    final text = ["Yesterday", "Today"];
    final Map<String, List<ExpenseModel>> expenseMap = {
      "Yesterday": widget.yesterdayList,
      "Today": widget.todayList
    };
    final List<int> spendingList = [
      getTotalSpending(yesterdayDummyList),
      getTotalSpending(todayDummyList)
    ];

    return PageView.builder(
      controller: pageController,
      scrollDirection: Axis.horizontal,
      itemCount: expenseMap.length,
      itemBuilder: (context, index) {
        var length = expenseMap[text[index]]!.length;
        return SingleChildScrollView(
          child: length != 0
              ? Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          text[index],
                          style: GoogleFonts.jetBrainsMono(
                            fontSize: 35,
                            fontWeight: FontWeight.w900,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
                          decoration:
                              const BoxDecoration(color: Color(0xff55a630)),
                          child: Text(
                            "\$${spendingList[index].toString()}",
                            style: GoogleFonts.jetBrainsMono(
                              fontSize: 35,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ...expenseMap[text[index]]!.map(
                      (item) {
                        return ExpenseTile(
                            expenseObj: item,
                            deleteExpenseObject: widget.deleteExpenseObject,
                            expenseArray: expenseMap[text[index]]!);
                      },
                    ),
                  ],
                )
              : Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      text[index],
                      style: GoogleFonts.jetBrainsMono(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      height: 300,
                      width: 300,
                      margin: const EdgeInsets.only(top: 50),
                      child: Image.asset(
                        "lib/assets/images/nothing_here.png",
                      ),
                    ),
                  ],
                ),
        );
      },
    );
  }
}
