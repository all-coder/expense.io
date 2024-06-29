import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj_13/models/dummydata.dart';
import 'package:proj_13/widgets/expense.dart';
import 'package:icons_plus/icons_plus.dart';
import '../screens/expense_add.dart';
import '../models/expense_model.dart';

//for example's sake
const int totalBudget = 100000;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}
//tis confusing, i know, but i am trying to manage state from home.dart file and through expense.dart file

class _HomeState extends State<Home> {
  int getTotalSpending(List<ExpenseModel> list) {
    var totalSum = 0;
    //to get the total sum
    for (int i = 0; i < list.length; i++) {
      totalSum = totalSum + int.parse(list[i].amount);
    }
    return totalSum;
  }

  //deleting expense object
  void deleteExpenseObject(String id, List<ExpenseModel> expenseArray) {
    var expenseObject;
    for (int i = 0; i < expenseArray.length; i++) {
      if (expenseArray[i].id == id) {
        expenseObject = expenseArray[i];
        break;
      }
    }
    setState(() {
      expenseArray.remove(expenseObject);
    });
  }

  @override
  Widget build(BuildContext context) {
    final remainingBudget = totalBudget - getTotalSpending([...todayDummyList,...yesterdayDummyList]);
    return Scaffold(
      backgroundColor: const Color(0xfffffcf2),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff1F1F1E),
        elevation: 20,
        onPressed: () async {
          final ExpenseModel receivedExpense = await Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const ExpenseAdd(),
            ),
          );

          setState(() {
            todayDummyList.add(receivedExpense);
          });
        },
        child: const Icon(BoxIcons.bx_money_withdraw,
            color: Color(0xffee6c4d), size: 30),
      ),
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: const Color(0xff293241),
                title: Text(
                  "expense.io",
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xffee6c4d),
                  ),
                ),
                leading: const Icon(
                  Icons.menu,
                  color: Color(0xffee6c4d),
                  size: 30,
                ),
                expandedHeight: 300,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                  children: [
                    Positioned(
                      top: 110,
                      left: 30,
                      child: Text(
                        "Remaining\nBudget",
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 25,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 190,
                      left: 30,
                      child: Text(
                        "\$$remainingBudget",
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 80,
                      left: 175,
                      child: Image.asset(
                        "lib/assets/images/peep.png",
                      ),
                    )
                  ],
                )),
              ),
            ];
          },
          body: Expense(
            todayList: todayDummyList,
            yesterdayList: yesterdayDummyList,
            deleteExpenseObject: deleteExpenseObject,
            getTotalSpending: getTotalSpending,
          )),
    );
  }
}


//to add a floating action button