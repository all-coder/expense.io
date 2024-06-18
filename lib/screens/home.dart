import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:proj_13/widgets/expense.dart';

const text = ["Yesterday", "Today"];

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: const Color(0xff964847),
            title: Text(
              "LifeSync",
              style: GoogleFonts.jetBrainsMono(
                fontSize: 35,
                fontWeight: FontWeight.w800,
                color: const Color(0xff141216),
              ),
            ),
            leading: const Icon(Icons.menu),
            expandedHeight: 300,
            floating: false,
            pinned: true,
          ),
          const SliverToBoxAdapter(
            child: Expense(),
          ),
        ],
      ),
    );
  }
}
