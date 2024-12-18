import 'package:flutter/material.dart';

import 'package:coffee_order_app/components/styled_body_text.dart';
import 'package:coffee_order_app/components/styled_button.dart';

class CoffeePref extends StatefulWidget {
  const CoffeePref({super.key});

  @override
  State<CoffeePref> createState() => _CoffeePrefState();
}

class _CoffeePrefState extends State<CoffeePref> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    // rerun the build()
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
    // rerun the build()

    setState(() {
      sugars = sugars < 5 ? sugars + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
           StyledBodyText(16, FontWeight.bold,text: 'Strength:',color:Colors.brown[700]),
            for (int i = 0; i < strength; i++)
              // Text('$i'),
              // coffee bean image
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(),
            ),
            StyledButton(text: const Text('+'), onPressed: increaseStrength),
          ],
        ),
        Row(
          children: [
            StyledBodyText(16, FontWeight.normal,text: 'Sugars:',color:Colors.brown[700]),

            if(sugars == 0)
              StyledBodyText(16, FontWeight.normal,text: 'No sugars...',color:Colors.brown[700]),
            for (int i = 0; i < sugars; i++)
              // sugar cube image
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            const Expanded(
              child: SizedBox(),
            ),
            StyledButton(text: const Text('+'), onPressed: increaseSugars),
          ],
        ),
      ],
    );
  }
}
