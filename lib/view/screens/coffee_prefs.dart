import 'package:flutter/material.dart';
import 'package:my_coffee/view/shared/common_widgets/styled_button.dart';
import '../shared/common_widgets/styled_text.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strength = 1;
  int sugars = 1;

  void increaseStrength() {
    setState(() {
      strength = strength < 5 ? strength + 1 : 1;
    });
  }

  void increaseSugars() {
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
            const StyledText('Strength: '),
            for (int i = 0; i < strength; i++)
              Image.asset(
                'assets/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseStrength, child: const Text('+'))
          ],
        ),
        Row(
          children: [
            const StyledText('Sugars: '),
            if (sugars == 0) const StyledText('No sugars...'),
            for (int i = 0; i < sugars; i++)
              Image.asset(
                'assets/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(child: SizedBox()),
            StyledButton(onPressed: increaseSugars, child: const Text('+'))
          ],
        ),
      ],
    );
  }
}
