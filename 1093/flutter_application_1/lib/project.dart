import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: Scaffold(
    body: Padding(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      child: PageAnimation()
    )
  )
));

class PageAnimation extends StatelessWidget {
  final sizeFactor = 150;
  final AnimationController controller;
  final Animation animation;
  final bool isRunning;

  const PageAnimation({
    Key? key,
    required this.controller,
    required this.animation,
    required this.isRunning,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (isRunning) {
          controller.stop();
        } else {
          controller.repeat(min: 0.4);
        }
      },
      child: Center(
        child: AnimatedBuilder(
          animation: controller,
          builder: (context, child) {
            return Container(
              width: animation.value,
              height: animation.value,
              color: Color.fromRGBO(134, 64, 248, controller.value)
            );
          },
        )
      )
    );
  }
}