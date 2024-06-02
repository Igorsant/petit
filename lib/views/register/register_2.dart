import 'package:flutter/material.dart';
import 'package:petit/components/background_container.dart';

class RegisterViewSecondStep extends StatelessWidget {
  const RegisterViewSecondStep({super.key});

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
        body: BackgroundContainer(
          topSpace: 120,
          child: Column(
            children: [
              const SizedBox(height: 20),
              Text(
                'Encontre rapidamente o melhor canto para o seu pet',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontSize: 32),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 10),
              SizedBox(
                width: 288,
                child: Text(
                  'Falta pouco, so mais alguns dados',
                  style: Theme.of(context).textTheme.labelSmall,
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    spreadRadius: -3,
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 7,
                    offset: const Offset(0, 5),
                  )
                ], borderRadius: BorderRadius.circular(30)),
                width: 298,
                child: TextField(
                  style: Theme.of(context).textTheme.labelSmall,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Telefone',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    spreadRadius: -3,
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 7,
                    offset: const Offset(0, 5),
                  )
                ], borderRadius: BorderRadius.circular(30)),
                width: 298,
                child: TextField(
                  style: Theme.of(context).textTheme.labelSmall,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Email',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    spreadRadius: -3,
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 7,
                    offset: const Offset(0, 5),
                  )
                ], borderRadius: BorderRadius.circular(30)),
                width: 298,
                child: TextField(
                  obscureText: true,
                  style: Theme.of(context).textTheme.labelSmall,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                    spreadRadius: -3,
                    color: Colors.black.withOpacity(0.5),
                    blurRadius: 7,
                    offset: const Offset(0, 5),
                  )
                ], borderRadius: BorderRadius.circular(30)),
                width: 298,
                child: TextField(
                  obscureText: true,
                  style: Theme.of(context).textTheme.labelSmall,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    hintText: 'Confirmar Senha',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                children: [
                  Image.asset("images/dog_jumping.png", scale: 2,),
                ],
              )
            ],
          ),
        ),
        floatingActionButton: SizedBox(
          width: 150,
          child: FloatingActionButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
              side: const BorderSide(color: Colors.transparent),
            ),
            elevation: 3.5,
            onPressed: () {},
            backgroundColor: const Color(0xFF2892D7),
            child: Text(
                style: Theme.of(context)
                    .textTheme
                    .labelSmall!
                    .copyWith(color: Colors.white),
                'Próximo'),
          ),
        ));
  }
}
