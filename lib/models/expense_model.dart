class ExpenseModel {
  const ExpenseModel(
      {required this.name,
      required this.amount,
      required this.date,
      required this.reciever});
  final String name;
  final String amount;
  final DateTime date;
  final String reciever;
}
