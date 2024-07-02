import 'package:flutter/material.dart';
import 'log_in.dart';
import 'sign_up.dart';
import 'home_page.dart';

void main() {
  runApp(const ToDoList());
}

class ToDoList extends StatelessWidget {
  const ToDoList({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      routes: {
        '/home': (context) => const HomePage(),
        '/signup': (context) => const SignUp(),
        '/login': (context) => const LogIn(),
        
      },
    );
  }
}
