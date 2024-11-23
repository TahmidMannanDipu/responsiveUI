import 'package:flutter/material.dart';
import 'package:responsive_design/home_page.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: WidgetStateProperty.all(Colors.indigo), // Color of scrollbar thumb
          thickness: WidgetStateProperty.all(8), // Thickness of scrollbar
          radius: const Radius.circular(8),
        )
      ),
      home: HomePage(),
    );
  }
}
