import 'package:flutter/material.dart';
import 'package:petit/components/background_container.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(context){
    return Scaffold(
      body: BackgroundContainer(
        topSpace: MediaQuery.of(context).size.height * 0.2,
        child: const Center(child: Text('Login Page')),
      ),
    );
  }
}