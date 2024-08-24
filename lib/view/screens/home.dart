import 'package:flutter/material.dart';
import 'package:my_coffee/view/screens/coffee_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
            'Origin Coffee',
             style: TextStyle(
               fontWeight: FontWeight.bold,
               color: Colors.white
             ),

        ),
        backgroundColor: Colors.brown[700],
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const Text('How I like my coffee...'),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child:  CoffeePrefs(),
          ),
        ],
      ),
    );
  }
}
