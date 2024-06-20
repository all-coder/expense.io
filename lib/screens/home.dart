import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj_13/widgets/expense.dart';
import 'package:icons_plus/icons_plus.dart';
import '../screens/expense_add.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffcf2),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        elevation: 20,
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (ctx) => const ExpenseAdd(),
            ),
          );
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
                        "\$500",
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
          body: const Expense()),
    );
  }
}


//to add a floating action button