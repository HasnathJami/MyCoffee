import 'package:flutter/material.dart';
import 'package:my_coffee/view/screens/home.dart';

void main() {
  runApp(const MaterialApp(
    // home: Text("Jishan"),
    home: Home(),
    // home: Sandbox(),
  ));
}

// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return  Scaffold(
//           appBar: AppBar(
//             title: const Text('Origin Coffee'),
//             backgroundColor: Colors.brown[700],
//             centerTitle: true,
//           ),
//           body: const Text('Hot Coffee'),
//         );
//   }
// }

// class Home extends StatelessWidget {
//   const Home({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.green,
//       // width: 200,
//       // height: 100,
//       // padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
//       padding: const EdgeInsets.all(20),
//       // margin: const EdgeInsets.fromLTRB(20, 10, 0, 0),
//       margin: const EdgeInsets.only(left: 20),
//       child: const Text
//         (
//         "Cold Coffee",
//         style: TextStyle(
//           fontSize: 25,
//           letterSpacing: 4,
//           fontStyle: FontStyle.italic,
//           decoration: TextDecoration.underline
//         ),),
//     );
//   }
// }

class Sandbox extends StatelessWidget {
  const Sandbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sandbox'),
        backgroundColor: Colors.grey,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 100,
            color: Colors.green,
            child: const Text("First One"),
          ),
          Container(
            width: 200,
            color: Colors.red,
            child: const Text('Second One'),
          ),
          Container(
            width: 300,
            color: Colors.yellow,
            child: const Text("Third One"),
          ),
        ],
      ),
    );
  }
}
