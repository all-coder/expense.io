import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const text = ["Yesterday", "Today"];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.purple,
            title: Text(
              "LifeSync",
              style: GoogleFonts.jetBrainsMono(fontSize: 35,fontWeight: FontWeight.w800),
            ),
            leading: const Icon(Icons.menu),
            expandedHeight: 300,
            floating: false, 
            pinned: true, 
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ListTile(
                  title: Text(text[index % text.length]),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
