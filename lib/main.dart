import 'package:flutter/material.dart';
import 'package:nike_app/models/cart.dart';
import 'package:nike_app/pages/intro.dart';
import 'package:provider/provider.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Cart(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Intropage(),
      ),
    );
  }
}
