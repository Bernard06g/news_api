import 'package:flutter/material.dart';
import 'package:news_api/view/record.dart';
import 'package:news_api/view/home_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/UserRecord': (context)=> const UserRecord(),
      },
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}
