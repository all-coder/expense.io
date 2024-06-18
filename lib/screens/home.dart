import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj_13/widgets/expense.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                backgroundColor: const Color(0xff293241),
                title: Text(
                  "LifeSync",
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 35,
                    fontWeight: FontWeight.w800,
                    color: const Color(0xffee6c4d),
                  ),
                ),
                leading: const Icon(
                  Icons.menu,
                  color: Color(0xffee6c4d),
                ),
                expandedHeight: 300,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    background: Stack(
                  children: [
                    Positioned(
                      top:90,
                      left:175,
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
