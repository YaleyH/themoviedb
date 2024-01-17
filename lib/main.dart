import 'package:flutter/material.dart';
import 'package:themoviedb/Theme/app_colors.dart';
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
          backgroundColor: AppColors.mainDarkBlue,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
          )
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: AppColors.mainDarkBlue, // цвет фона
          selectedItemColor: Colors.white, // выбранный элемент
          unselectedItemColor: Colors.grey, // не выбранный элемент
        ),
        splashColor: Colors.transparent,
        useMaterial3: true,
      ),
      routes: {
        '/auth' : (context) => const AuthWidget(),
        '/main_screen' : (context) => const MainScreenWidget(),
      },
      initialRoute: '/auth',
    );
  }
}
