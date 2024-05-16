import 'package:flutter/material.dart';
import 'package:petit/components/background_container.dart';

class HomePageView extends StatelessWidget {
  const HomePageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      BackgroundContainer(
        topSpace: MediaQuery.of(context).size.height * 0.43,
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
                  Navigator.pushNamedAndRemoveUntil(context, "/login", (route) => false);
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
      Positioned(
          top: MediaQuery.of(context).size.height * 0.14,
          right: MediaQuery.of(context).size.width * 0.1,
          child: Image.asset("images/young_man.png"))
    ]));
  }
}
