// identifier : Kimlik belirleyici (id)

import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, education, travel, work }

class Expense {
  Expense(
      {required this.name,
      required this.price,
      required this.date,
      required this.category})
      : id = uuid.v4();

  // ctor'da bir değeri almak yerine değer atamak
  final String id;
  final String name;
  final double price;
  final DateTime date;
  final Category category;
}
// Yemek, 50

// flutter'a paket ekleme / fltter pub kullanıyoruz
// Enums : Enumerated Type

 