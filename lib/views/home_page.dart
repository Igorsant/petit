import 'package:flutter/material.dart';
import 'package:petit/components/background_container.dart';
import 'package:petit/views/login_view.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    final hasHeightSpace = MediaQuery.sizeOf(context).height > 657;
    return Scaffold(
        body: Stack(children: [
      BackgroundContainer(
        topSpace: hasHeightSpace ? 400 : 0,
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Text(
              'Olá!',
              style: Theme.of(context).textTheme.labelLarge,
            ),
            Container(
              width: 279,
              margin: const EdgeInsets.only(bottom: 5, top: 30),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(25, 131, 199, 1)),
                child: Text(
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                  "Entrar",
                ),
              ),
            ),
            SizedBox(
              width: 279,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(176, 224, 255, 1),
                ),
                onPressed: () {},
                child: Text(
                    style: Theme.of(context).textTheme.labelMedium,
                    "Cadastrar"),
              ),
            ),
            Container(
              width: 279,
              margin: const EdgeInsets.only(top: 50),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromRGBO(250, 162, 98, 1),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => const LoginView()));
                },
                child: Text(
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(color: Colors.white),
                  "Acessar sem conta",
                ),
              ),
            ),
          ],
        ),
      ),
      if (hasHeightSpace)
        Align(
            alignment: const Alignment(0, -1),
            child: Column(
              children: [
                const SizedBox(
                  height: 130,
                ),
                Image.asset("images/young_man.png"),
              ],
            )),
    ]));
  }
}
