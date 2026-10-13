import 'package:flutter/material.dart';
import 'package:myfavplace/version6/loginscreen.dart';
import 'package:myfavplace/version6/myfaveplacescreen.dart';

void main() {
  runApp(const MyFavoritePlaceApp());
}

class MyFavoritePlaceApp extends StatelessWidget {
  const MyFavoritePlaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => LoginScreen(),
        '/profile': (context) => FavoritePlaceScreen(),
      },
    );
  }
}
