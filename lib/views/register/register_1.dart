import 'package:flutter/material.dart';
import 'package:petit/components/background_container.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        iconTheme: const IconThemeData(
          color: Color.fromRGBO(255, 255, 234, 1),
          size: 40,
          weight: 100,
        ),
      ),
      extendBodyBehindAppBar: true,
      body: const BackgroundContainer(
        topSpace: 120,
        child: Text("Tela de cadastro"),
      ),
    );
  }
}
