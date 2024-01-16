import 'package:flutter/material.dart';
import 'package:themoviedb/widgets/auth/auth_widget.dart';
import 'package:themoviedb/widgets/main_screen/main_screen_widget.dart';

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
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )
        ),
        useMaterial3: true,
      ),
      routes: {
        '/auth' : (context) => AuthWidget(),
        '/main_screen' : (context) => MainScreenWidget(),
      },
      initialRoute: '/auth',
    );
  }
}
