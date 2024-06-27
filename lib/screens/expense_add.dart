import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:icons_plus/icons_plus.dart';
import '../models/expense_model.dart';

class ExpenseAdd extends StatefulWidget {
  const ExpenseAdd({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpenseAddState();
  }
}

class _ExpenseAddState extends State<ExpenseAdd> {
  Future<void> _getDate() async {
    DateTime? _pickedDate = await showDatePicker(
      //tells flutter the DateTime can either hold datetime or null value, that is
      //why we used '?' operator.
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2040),
    );
    if (_pickedDate != null) {
      setState(() {
        dateController.text = _pickedDate.toString().split(" ")[0];
      });
    }
  }

  final _formKey = GlobalKey<FormState>();
  final descriptionController = TextEditingController();
  final amountController = TextEditingController();
  final dateController = TextEditingController();
  final tagsList = tagIcons.keys.toList();

  var currentChoiceOfTag;

  @override
  void initState() {
    super.initState();
    currentChoiceOfTag = tagsList[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffffcf2),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          iconTheme: const IconThemeData(
            color: Color(0xffee6c4d),
          ),
          title: Text(
            "expense.io",
            style: GoogleFonts.jetBrainsMono(
              fontSize: 35,
              fontWeight: FontWeight.w800,
              color: const Color(0xffee6c4d),
            ),
          ),
          backgroundColor: const Color(0xff262626),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 8, bottom: 4),
        margin: const EdgeInsets.all(20),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "New Expense",
                style: GoogleFonts.jetBrainsMono(
                  fontSize: 50,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xff262626),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              //nature of payment
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Color(0xff262626),
                ),
                child: TextFormField(
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      EvaIcons.text_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                    contentPadding: EdgeInsets.only(top: 12),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //amount of money paid
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Color(0xff262626),
                ),
                child: TextFormField(
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      BoxIcons.bx_money,
                      color: Colors.white,
                      size: 30,
                    ),
                    contentPadding: EdgeInsets.only(top: 12),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),

              //date picker
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Color(0xff262626),
                ),
                child: TextFormField(
                  onTap: () {
                    _getDate();
                  },
                  controller: dateController,
                  style: GoogleFonts.jetBrainsMono(
                    fontSize: 15,
                    color: Colors.white,
                  ),
                  decoration: const InputDecoration(
                    prefixIcon: Icon(
                      Icons.date_range_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                    contentPadding: EdgeInsets.only(top: 12),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const SizedBox(height: 10),

              //dropdownmenuformfield widget
              Container(
                margin: const EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(
                  color: Color(0xff262626),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Row(
                  children: [
                    Icon(
                      tagIcons[currentChoiceOfTag],
                      color: Colors.white,
                      size: 30,
                    ),
                    const SizedBox(width: 15),
                    Expanded(
                      child: DropdownButtonFormField(
                        value: currentChoiceOfTag,
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.only(top: 5),
                        ),
                        items: tagsList.map((item) {
                          return DropdownMenuItem(
                            value: item,
                            child: Text(
                              item.name,
                              style: GoogleFonts.jetBrainsMono(
                                fontSize: 15,
                                color: Colors.white,
                              ),
                            ),
                          );
                        }).toList(),
                        onChanged: (item) {
                          setState(() {
                            currentChoiceOfTag = item;
                          });
                        },
                        dropdownColor: const Color(0xff8C8C8C),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),

              //adding buttons for submission and resetting the form
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      border: Border(
                        left: BorderSide(
                          color: Color(0xff1F1F1E),
                        ),
                        right: BorderSide(
                          color: Color(0xff1F1F1E),
                        ),
                        top: BorderSide(
                          color: Color(0xff1F1F1E),
                        ),
                        bottom: BorderSide(
                          color: Color(0xff1F1F1E),
                        ),
                      ),
                      color: Colors.white,
                    ),
                    child:TextButton(
                      
                      onPressed: () {},
                      style: TextButton.styleFrom(),
                      child: Text(
                        "Reset",
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 15,
                          color: const Color(0xff1F1F1E),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      color: Color(0xff1F1F1E),
                    ),
                    child: TextButton(
                      onPressed: () {},
                      child: Text(
                        "Add",
                        style: GoogleFonts.jetBrainsMono(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
