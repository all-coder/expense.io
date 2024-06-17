import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context){
    return Container(
              width: double.infinity,
              height: 230,
              decoration: const BoxDecoration(
                color: Color(0xffcf9641),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 35),
                    Text(
                      "LifeSync",
                      style: GoogleFonts.jetBrainsMono(
                          fontSize: 54,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xff2f3d33)),
                    ),
                    Text(
                      "Helps to keep your life in sync :-)",
                      style: GoogleFonts.jetBrainsMono(
                          fontSize: 18
                          ,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xffFFFFFF)),
                    ),
                  ],
                ),
              ),
            );
  }
}
