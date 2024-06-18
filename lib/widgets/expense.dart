import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Expense extends StatefulWidget {
  const Expense({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
  }
}

const text = ["Yesterday", "Today"];

class _ExpenseState extends State<Expense> {
  final pageController = PageController(initialPage: 1);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
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
