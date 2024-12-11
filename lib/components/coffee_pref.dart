import 'package:flutter/material.dart';

class CoffeePref extends StatelessWidget {
  const CoffeePref({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text('Strength: '),
            const Text('3'), // coffee bean image
            Image.asset(
              'assets/img/coffee_bean.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const SizedBox(
              width: 50,
            )
          ],
        ),
        Row(
          children: [
            const Text('Sugars: '),
            const Text('3'), // sugar cube image
            Image.asset(
              'assets/img/sugar_cube.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const SizedBox(
              width: 50,
            )
          ],
        ),
      ],
    );
  }
}
