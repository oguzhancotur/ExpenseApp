import 'package:expenseapp/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseList extends StatefulWidget {
  const ExpenseList({Key? key, required List expenses}) : super(key: key);

  @override
  _ExpenseListState createState() => _ExpenseListState();
}

class _ExpenseListState extends State<ExpenseList> {
  // dummy data
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
  ]; // firebase, veritabanı

  //List wiev kullanacagız

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(
          height: 210,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Text(
              "Chart",
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(7.0),
          child: Text(
            "Expense List",
            style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.orange),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        15.0), // Kenar yuvarlatma özelliği
                  ),
                  elevation: 4,
                  child: ListTile(
                    title: Text(expenses[index].name),
                    subtitle: Row(children: [
                      Text(
                        "Price = ",
                        style: TextStyle(
                            color: Color.fromARGB(255, 196, 15, 2),
                            fontWeight: FontWeight.w800),
                      ),
                      Text(
                        "${expenses[index].price.toString()}",
                      ),
                      Text(
                        "€",
                      ),
                    ]),
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: const Text(
            "End of List",
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.w700),
          ),
        ),
      ],
    );
  }
}
//Topbar ekleme vs...