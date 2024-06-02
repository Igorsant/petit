import 'package:flutter/material.dart';
import 'package:petit/components/background_container.dart';
import 'package:petit/views/register/register_1.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(context) {
    final hasHeightSpace = MediaQuery.sizeOf(context).height > 657;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
        iconTheme: const IconThemeData(
            color: Color.fromRGBO(255, 255, 234, 1), size: 40, weight: 100),
      ),
      extendBodyBehindAppBar: true,
      body: BackgroundContainer(
        topSpace: hasHeightSpace ? 130 : 70,
        child: Column(
          children: [
            const SizedBox(height: 20),
            Text(
              'Bem Vindo!',
              style: Theme.of(context)
                  .textTheme
                  .labelLarge!
                  .copyWith(fontSize: 32),
            ),
            const SizedBox(height: 40),
            const SizedBox(
              width: 350,
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 350,
              child: Column(
                children: [
                  const TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: 'Senha',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Esqueceu a senha?",
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(fontSize: 16)),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            SizedBox(
              width: 208,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(25, 131, 199, 1),
                  elevation: 3,
                  padding: const EdgeInsets.all(10),
                ),
                onPressed: () {},
                child: Text(
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                  "Login",
                ),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Color.fromRGBO(57, 47, 90, 1),
                    thickness: 2,
                    endIndent: 10,
                  ),
                ),
                Text(
                  style: Theme.of(context).textTheme.labelSmall!,
                  "Ou faça login com",
                ),
                const Expanded(
                  child: Divider(
                    color: Color.fromRGBO(57, 47, 90, 1),
                    thickness: 2,
                    indent: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: 247,
              child: ElevatedButton.icon(
                onPressed: () => {},
                icon: const Icon(
                  Icons.g_mobiledata,
                  color: Colors.white,
                  size: 30,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(254, 106, 96, 1),
                    padding: const EdgeInsets.all(15),
                    elevation: 3),
                label: Text(
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: 16, color: Colors.white),
                    "Continue com o Google"),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 247,
              child: ElevatedButton.icon(
                onPressed: () => {},
                icon: const Icon(
                  Icons.apple,
                  color: Colors.white,
                  size: 30,
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(36, 36, 36, 1),
                    padding: const EdgeInsets.all(15),
                    elevation: 3),
                label: Text(
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: 16, color: Colors.white),
                    "Continue com a Apple"),
              ),
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                    style: Theme.of(context).textTheme.headlineMedium,
                    "Não possui conta? "),
                TextButton(
                  onPressed: () => {
                    Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const RegisterViewFirstStep())) 
                  },
                  child: Text(
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium!
                          .copyWith(fontWeight: FontWeight.bold),
                      "Cadastre-se"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
