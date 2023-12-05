

import 'package:flutter/material.dart';

import 'package:assignment_module_12_task_manager_app/ui/screens/splash_screen.dart';


void main() {
  runApp(const TaskManagerApp());
}

class TaskManagerApp extends StatelessWidget {
  const TaskManagerApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: navigatorKey,
      home: const SplashScreen(),
      title: "Task Manager App ",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          textTheme: const TextTheme(
            bodyLarge: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w800,
              fontSize: 26,
            ),
            bodyMedium: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
            titleLarge: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.w800,
              fontSize: 14,
              color: Colors.grey,
            ),
            titleSmall: TextStyle(
              fontFamily: 'poppins',
              fontWeight: FontWeight.normal,
              fontSize: 10,
              color: Colors.grey,
            ),
          ),
          inputDecorationTheme: InputDecorationTheme(
            filled: true,
            fillColor: Colors.grey,
            hintStyle: Theme.of(context).textTheme.bodySmall,
            border: const OutlineInputBorder(borderSide: BorderSide.none),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 12),
              backgroundColor: const Color(0xFF21bf73),
            ),
          )),
    );
  }
}