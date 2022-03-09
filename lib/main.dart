import 'package:flutter/material.dart';

// Screens Importing
import 'screens/find_doulas.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mothrly',
      debugShowCheckedModeBanner: false,
      home: FindDoulasScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromRGBO(245, 245, 245, 1,),
      ),

    );
  }
}
