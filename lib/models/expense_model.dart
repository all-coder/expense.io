import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

enum Tags { food, utility, entertainment, transport, health }

//we are mapping the tags to the icons
final Map<Tags, dynamic> tagIcons = {
  Tags.food: Icons.dining,
  Tags.utility: Icons.cable_rounded,
  Tags.transport: BoxIcons.bx_car,
  Tags.entertainment: BoxIcons.bx_movie,
  Tags.health: BoxIcons.bxs_ambulance,
};


//here we are defining the expense model to be used across all files across the app
class ExpenseModel {
  const ExpenseModel(
      {required this.name,
      required this.amount,
      required this.date,
      required this.reciever,
      required this.tag});
  final String name;
  final String amount;
  final DateTime date;
  final String reciever;
  final Tags tag;
}
