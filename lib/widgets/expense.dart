import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Expense extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _ExpenseState();
  }
}

const text = ["Yesterday", "Today"];

class _ExpenseState extends State<Expense> {
  final pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        controller: pageController,
        scrollDirection: Axis.horizontal,
        itemCount: text.length,
        itemBuilder: (context, index) {
          return SizedBox(
            width: double.infinity,
            child: Text(
              text[index],
              style: GoogleFonts.jetBrainsMono(
                fontSize: 35,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
          );
        },
      ),
    );
  }
}
