import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key, required this.title});

  final String title;

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
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
          image: DecorationImage(
            image: AssetImage('images/dog_paw.png'),
            repeat: ImageRepeat.repeat,
            scale: 15,
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 400),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromRGBO(255, 255, 234, 1),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(38),
                          topRight: Radius.circular(38),
                        ),
                      ),
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
                                  backgroundColor:
                                      const Color.fromRGBO(25, 131, 199, 1)),
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
                                backgroundColor:
                                    const Color.fromRGBO(176, 224, 255, 1),
                              ),
                              onPressed: () {},
                              child: Text(
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                  "Cadastrar"),
                            ),
                          ),
                          Container(
                            width: 279,
                            margin: const EdgeInsets.only(top: 50),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(250, 162, 98, 1),
                              ),
                              onPressed: () {},
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
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // return const Text('Olá');
  }
  // Rest of your code...
}
