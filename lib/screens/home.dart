import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../widgets/appbar.dart';

const text = ["Today's expenses", "yesterday's expenses"];

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 20),
          Expanded(
            child: PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: text.length,
                itemBuilder: (context, index) {
                  return Container(
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
                }),
          )
        ],
      ),
    );
  }
}
