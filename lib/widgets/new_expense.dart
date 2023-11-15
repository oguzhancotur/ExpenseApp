import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewExpense extends StatefulWidget {
  const NewExpense({Key? key}) : super(key: key);

  @override
  _NewExpenseState createState() => _NewExpenseState();
}

class _NewExpenseState extends State<NewExpense> {
  //Controller
  final _nameController = TextEditingController();
  final _amountController = TextEditingController();

//Seçilen tarih, başlangıcta günümüz tarihiyle ayarlanıyor
  DateTime _date = DateTime.now();

  //Tarih değiştiğinde çağırılan fonksiyon
  void changeDateText(DateTime date) {
    setState(() {
      _date = date;
    });
  }

  //Kaydedilen tarihi tutmak için bir değişken tanımlanıyor
  String _savedDate = "";

  //Kategoriyi seçmek için bir değişken tanımlanıyor
  String _category = "Select Category";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            controller:
                _nameController, // her yazılan değişiklikte debug console da bir uyarı atar.
            maxLength: 50,
            decoration: const InputDecoration(label: Text("Expense Name")),
          ),
          TextField(
            controller: _amountController,
            keyboardType: TextInputType
                .number, // her yazılan değişiklikte debug console da bir uyarı atar.
            decoration:
                const InputDecoration(label: Text("Amount"), prefixText: "€"),
          ),
          IconButton(
              onPressed: () async {
                //kullanıcıya tarih seçimini göstren pencereyi aç
                var date = await showDatePicker(
                  context: context,
                  initialDate: _date,
                  firstDate: DateTime(1900, 1, 1),
                  lastDate: DateTime(2055, 12, 31),
                );
                //Eğer kullanıcı bir tarih seçerse tarihi güncelle
                if (date != null) {
                  changeDateText(date);
                }
                //Date Picker açmak
              },
              icon: const Icon(Icons.calendar_month)),
          //Seçilen tarihi gösteren metin
          Text(DateFormat.yMd().format(_date)),
          //Kategori seçmek için acılan liste
          DropdownButton<String>(
            value: _category,
            hint: const Text("Select Category"),
            onChanged: (String? newValue) {
              setState(() {
                _category = newValue!;
              });
            },
            items: <String>[
              "Select Category", // Bu değer başlangıç değeri olarak kullanılıyor.
              "Food",
              "Education",
              "Travel",
              "Work",
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),

          ElevatedButton(
            onPressed: () {
              print("Registration Successful : ${_nameController.text}");
              setState(() {
                _savedDate = DateFormat.yMd().format(_date);
              });
              // **Kaydedilen kategoriyi konsola yazdır**
              print("Selected Category: $_category");
            },
            child: const Text("Save"),
          ),
          // Kaydedilen tarihi gösteren metin
          // Kaydedilen tarihi bir Card widget'ına yerleştir

          Card(
            color: Color.fromARGB(255, 13, 126, 3),
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Expend Name: ${_nameController.text}",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255))),
                  Text("Amount: ${_amountController.text} \€",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255))),
                  Text("Selected Date: $_savedDate",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255))),
                  // **Seçilen kategoriyi gösteren metin**
                  Text("Selected Category: $_category",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 255, 255, 255))),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
