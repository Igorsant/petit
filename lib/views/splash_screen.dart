import 'package:flutter/material.dart';
import 'package:petit/views/login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) =>
                const LoginView(title: 'Flutter Demo Home Page')),
      );
    });
  }

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(252, 144, 60, 1),
              Color.fromRGBO(242, 88, 22, 1),
            ],
          ),
        ),
        child: Center(
          child: SizedBox(
              width: 140, height: 140, child: Image.asset('images/logo.png')),
        ),
      ),
    );
  }
}