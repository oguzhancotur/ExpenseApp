//açılan ilk sayfa
import 'package:expenseapp/models/expense.dart';
import 'package:expenseapp/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList(() param0, {super.key});

  @override
  State<ExpenseList> createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  final List<Expense> expenses = [
    Expense(
        name: "Adana Kebab",
        price: 240,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Flutter Udemy Course",
        price: 250,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        name: "Wiener Schnitzel",
        price: 220,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Italy Travel",
        price: 2800,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        name: "English Course",
        price: 700,
        date: DateTime.now(),
        category: Category.education),
    Expense(
        name: "Switzerland Travel",
        price: 2500,
        date: DateTime.now(),
        category: Category.travel),
    Expense(
        name: "Khachapuri",
        price: 250,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Italian Course",
        price: 800,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        name: "Hamburger",
        price: 180,
        date: DateTime.now(),
        category: Category.food),
    Expense(
        name: "Personal Development Course",
        price: 500,
        date: DateTime.now(),
        category: Category.work),
  ]; // Gerçek veritabanı kullanılacaksa bu veri yerine dinamik veri alınmalı

  // Build metodu, widget'ın görünümünü oluşturur
  @override
  Widget build(BuildContext context) {
    // Ekranın ortasına yerleştirilmiş bir sütun oluştur
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Grafik veya başka bir görselleştirmeyi içerecek bir SizedBox ekleyin
          const SizedBox(
            height: 150,
            child: Text("Chart"),
          ),

          // Harcamalar başlığını içerecek bir Padding ekleyin
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Expenses",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ), // Harcamalar başlığı
          ),
          Expanded(
            child: ListView.builder(
              itemCount: expenses.length,
              itemBuilder: (context, index) {
                // Her bir gider öğesini gösterecek ExpenseItem widget'ını ekleyin
                return ExpenseItem(expenses[index]);
              },
            ),
          )
        ],
      ),
    );
  }
}
