import 'package:flutter/material.dart';
import 'package:expenseapp/pages/main_page.dart';

void main() {
  runApp(MyApp());
}

// Uygulama ana sınıfı
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Tema ayarları
      theme: ThemeData(
        // Material 3 temasını kullan
        useMaterial3: true,

        // Renk şeması ayarları
        colorScheme: ColorScheme.light(
          primary: const Color.fromARGB(255, 212, 11, 11), // Ana renk
          onPrimary: const Color.fromARGB(
              255, 255, 255, 255), // Ana renk üzerindeki metin rengi
          primaryContainer: Colors
              .grey[400]!, // Ana renk ile arkaplan arasındaki boşluk rengi
          onPrimaryContainer: Colors
              .black, // Ana renk ile arkaplan arasındaki boşluk üzerindeki metin rengi
        ),

        // AppBar temaları
        appBarTheme: const AppBarTheme().copyWith(
          backgroundColor: const Color.fromARGB(
              255, 212, 11, 11), // AppBar'ın arkaplan rengi
          foregroundColor: const Color.fromARGB(
              255, 255, 255, 255), // AppBar üzerindeki metin rengi
        ),

        // Card temaları
        cardTheme: const CardTheme().copyWith(
          color: Colors.white, // Kartın arkaplan rengi
          margin: const EdgeInsets.symmetric(
              horizontal: 15, vertical: 12), // Kartın kenar boşlukları
        ),

        // Metin temaları
        textTheme: ThemeData().textTheme.copyWith(
              titleLarge: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 212, 11, 11),
                fontSize: 22,
              ),
            ),
      ),

      // Ana sayfa
      home: const MainPage(),

      // Debug banner'ı gösterme
      debugShowCheckedModeBanner: false,
    );
  }
}
