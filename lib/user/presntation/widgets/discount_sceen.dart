import 'package:flutter/material.dart';

class DiscountSceen extends StatelessWidget {
  const DiscountSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100,
          width: 100,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color(0x99E9B824),
              Color.fromARGB(153, 238, 80, 7),
              Color(0xFFFFFFFF),
            ],
            // stops: [0.1, 0.20, 0.50],
          )),
        ),
      ),
    );
  }
}
