import '../models/expense_model.dart';
import 'package:uuid/uuid.dart';

const uuid = Uuid();

final List<ExpenseModel> todayDummyList = [
  ExpenseModel(
    name: "Transport",
    amount: "500",
    date: DateTime.now(),
    tag: Tags.transport,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Entertainment",
    amount: "1200",
    date: DateTime.now(),
    tag: Tags.entertainment,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Utility",
    amount: "800",
    date: DateTime.now(),
    tag: Tags.utility,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Shopping",
    amount: "2500",
    date: DateTime.now(),
    tag: Tags.food,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Travel",
    amount: "4500",
    date: DateTime.now(),
    tag: Tags.entertainment,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Healthcare",
    amount: "3500",
    date: DateTime.now(),
    tag: Tags.health,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Insurance",
    amount: "2200",
    date: DateTime.now(),
    tag: Tags.utility,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Groceries",
    amount: "300",
    date: DateTime.now(),
    tag: Tags.food,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Dining Out",
    amount: "1500",
    date: DateTime.now(),
    tag: Tags.food,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Gym Membership",
    amount: "1000",
    date: DateTime.now(),
    tag: Tags.health,
    id: uuid.v1(),
  ),
];

final List<ExpenseModel> yesterdayDummyList = [
  ExpenseModel(
    name: "Fitness",
    amount: "1200",
    date: DateTime.now(),
    tag: Tags.health,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Internet Bill",
    amount: "600",
    date: DateTime.now(),
    tag: Tags.utility,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Books",
    amount: "500",
    date: DateTime.now(),
    tag: Tags.entertainment,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Car Maintenance",
    amount: "800",
    date: DateTime.now(),
    tag: Tags.transport,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Gifts",
    amount: "300",
    date: DateTime.now(),
    tag: Tags.entertainment,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Electricity Bill",
    amount: "400",
    date: DateTime.now(),
    tag: Tags.utility,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Doctor's Visit",
    amount: "2000",
    date: DateTime.now(),
    tag: Tags.health,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Movies",
    amount: "1000",
    date: DateTime.now(),
    tag: Tags.entertainment,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Home Repair",
    amount: "1500",
    date: DateTime.now(),
    tag: Tags.utility,
    id: uuid.v1(),
  ),
  ExpenseModel(
    name: "Fuel",
    amount: "700",
    date: DateTime.now(),
    tag: Tags.transport,
    id: uuid.v1(),
  ),
];
