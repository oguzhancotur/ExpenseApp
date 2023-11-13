import 'package:expenseapp/pages/expense_list.dart';
import 'package:flutter/material.dart';

//Single
void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExpenseApp(),
    ),
  );
}

class ExpenseApp extends StatelessWidget {
  const ExpenseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Center(
          child: const Text(
            "Expense App",
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
        ),
      ),
      body: ExpenseList(expenses: []),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showSnackBar(context);
        },
        backgroundColor: Colors.orange,
        child: const Icon(Icons.add),
      ),
    );
  }

  void showSnackBar(BuildContext context) {
    final snackBar = SnackBar(
      content: Row(
        children: [
          const Text("Add button pressed !"),
          Icon(
            Icons.check_circle,
            color: Colors.orange,
          ),
        ],
      ),
      action: SnackBarAction(
        label: "close button",
        onPressed: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}

//Modelleme : Üzerinde çalışıkacak yapıların uygulamada nesne haline getirilmesi yapısıdır.
