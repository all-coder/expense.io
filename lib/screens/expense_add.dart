import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExpenseAdd extends StatefulWidget {
  const ExpenseAdd({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpenseAddState();
  }
}

class _ExpenseAddState extends State<ExpenseAdd> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xffee6c4d),
          ),
          title: Text(
            "LifeSYNC",
            style: GoogleFonts.jetBrainsMono(
              fontSize: 35,
              fontWeight: FontWeight.w800,
              color: const Color(0xffee6c4d),
            ),
          ),
          backgroundColor: const Color(0xff293241),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left:15,right: 15,top:8,bottom:4),
        height: 300,
        margin: const EdgeInsets.all(20),
        color: Colors.amber,
        child: Form(
          key: _formKey,
          child: Column(
            children: [
             TextFormField(
              decoration: InputDecoration(),
             )
            ],
          ),
        ),
      ),
    );
  }
}
