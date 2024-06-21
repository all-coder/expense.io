import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../models/expense_model.dart';

class ExpenseTile extends StatelessWidget {
  const ExpenseTile({super.key, required this.expenseObj});
  final ExpenseModel expenseObj;

  @override
  Widget build(BuildContext context) {
    const double leftAlignment = 65;
    return Container(
      padding: const EdgeInsets.all(6),
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.fromLTRB(10, 8, 10, 5),
      height: 75,
      decoration: const BoxDecoration(color: Color(0xff3b3836)),
      //stack is the best way to go about positioning items
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 15,
            child: Icon(
              tagIcons[expenseObj.tag],
              size:30,
              color: Colors.white,
            ),
          ),
          Positioned(
            left: leftAlignment,
            top: 2,
            child: Text(
              expenseObj.name,
              style: GoogleFonts.jetBrainsMono(
                fontSize: 25,
                fontWeight: FontWeight.w900,
                color: const Color(0xfffefefe),
              ),
            ),
          ),
          Positioned(
            left: leftAlignment,
            top: 37,
            child: Text(
              "\$${expenseObj.amount}",
              style: GoogleFonts.jetBrainsMono(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: const Color(0xffd1d1d1),
              ),
            ),
          ),
          Positioned(
              left: (MediaQuery.of(context).size.width).toDouble() - 85,
              top: 4,
              child: IconButton(
                iconSize: 40,
                icon: const Icon(
                  Icons.delete_outline_rounded,
                  color: Color(0xffef233c),
                ),
                onPressed: () {},
              ))
        ],
      ),
    );
  }
}
