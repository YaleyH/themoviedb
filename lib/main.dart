import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kino',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color.fromRGBO(3,37, 65, 1),
        ),
        useMaterial3: true,
      ),
      home: AuthWidget(),
    );
  }
}
