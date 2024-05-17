import 'package:flutter/material.dart';
import 'package:petit/components/background_container.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        iconTheme: const IconThemeData(color: Color.fromRGBO(255, 255, 234, 1), size: 40, weight: 100),
      ),
      extendBodyBehindAppBar: true,
      body: BackgroundContainer(
        topSpace: 110,
        child: Column(
          children: [
            Text('Bem Vindo!', style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 32),),
          ],
        ),
      ),
    );
  }
}
