import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  const BackgroundContainer({
    super.key,
    required this.child,
    required this.topSpace,
  });

  final double topSpace;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
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
          SizedBox(height: topSpace),
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color.fromRGBO(255, 255, 234, 1),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(38),
                  topRight: Radius.circular(38),
                ),
              ),
              child: child,
            ),
          )
        ],
      ),
    );
  }
}
