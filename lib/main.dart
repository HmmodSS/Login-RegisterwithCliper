import 'package:flutter/material.dart';
import 'package:login_and_reg1/View/Screens/home_screen.dart';
import 'package:login_and_reg1/View/Screens/login_screen.dart';
import 'package:login_and_reg1/View/Screens/register_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login_screen',
      routes: {
        '/login_screen': (context) => const LoginScreen(),
        '/register_screen': (context) => const RegisterScreen(),
        '/home_screen': (context) => const HomeScreen(),
      },
    );
  }
}
