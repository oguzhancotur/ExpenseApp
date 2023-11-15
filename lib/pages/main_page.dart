import 'package:expenseapp/pages/expense_list.dart';
import 'package:expenseapp/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Scaffold widget'ını kullanarak temel sayfa yapılandırması oluştur
    return Scaffold(
      appBar: AppBar(
        // AppBar widget'ını kullanarak üst çubuk oluştur
        backgroundColor: Color.fromARGB(255, 3, 133, 9),
        title: const Text(
          "Expense App",
          style: TextStyle(
              color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
        ),
        actions: [
          // Sağ üst köşede '+' simgesi içeren IconButton ekleyerek yeni gider eklemek için bir alt sayfa aç
          IconButton(
            iconSize: 35,
            color: Colors.white,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) {
                  // Ekranın yarısını kaplayacak şekilde yeni gider eklemek için alt sayfa oluştur
                  return FractionallySizedBox(
                    heightFactor: 0.60,
                    child: NewExpense(),
                  );
                },
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      // Ana sayfa içeriği olarak ExpenseList widget'ını kullan
      body: ExpenseList(()), // Burada NewExpense'in bir örneğini geçir
      // Sayfa arka plan rengini belirle
      backgroundColor: Color.fromARGB(218, 73, 245, 58),
    );
  }
}
