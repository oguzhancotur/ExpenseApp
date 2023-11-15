import 'package:expenseapp/pages/main_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            useMaterial3:
                true), //User experiance ı düzeltir, üst kısımdaki renk farkını ortadan kaldırır.
        //Genel olarak stilleri düzenler vs.
        home: const MainPage()),
  );
}
