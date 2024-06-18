enum Tags {
  food,
  groceries,
  utility,
  entertainment,
  transport,
  health
}

class ExpenseModel {
  const ExpenseModel({
    required this.name,
    required this.amount,
    required this.date,
    required this.reciever,
    required this.tag
  });
  final String name;
  final String amount;
  final DateTime date;
  final String reciever;
  final Tags tag;
}
