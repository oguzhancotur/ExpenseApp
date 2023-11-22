// dummy data
import 'package:expenseapp/models/expense.dart';

final List<Expense> expenses = [
  Expense(
      name: "Hamburger",
      price: 184,
      date: DateTime.now(),
      category: Category.food),
  Expense(
      name: "Flutter Udemy Course",
      price: 750,
      date: DateTime.now(),
      category: Category.education),
  Expense(
      name: "Italy Travel",
      price: 15000,
      date: DateTime.now(),
      category: Category.travel),
];
