import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';

void main() {
  runApp(const FakeStore());
}

class FakeStore extends StatelessWidget {
  const FakeStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}
