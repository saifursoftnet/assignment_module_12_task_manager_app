
import 'package:flutter/material.dart';
import 'package:assignment_module_12_task_manager_app/ui/controller/auth_controller.dart';
import 'package:assignment_module_12_task_manager_app/ui/screens/login_screen.dart';
import 'package:assignment_module_12_task_manager_app/ui/screens/main_bottom_nav_screen.dart';
import 'package:assignment_module_12_task_manager_app/ui/widgets/background_image.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void splashScreenTimeOut() async {
    bool isLoggedIn = await Auth.checkUserAuthState();

    Future.delayed(const Duration(seconds: 2)).then(
          (value) => Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) =>
          isLoggedIn ? const MainBottomNavScreen() : const LoginScreen(),
        ),
            (route) => false,
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    splashScreenTimeOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WithBackGroundImage(

        showBottomCircularLoading: true,

        child: Center(

          child: Image.network('https://plus.unsplash.com/premium_photo-1677101221533-52b45823a2dc?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1471&q=80',
            width: 100,
          ),
          ),
        ),
      );
  }
}