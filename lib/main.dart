import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Dinesh Color",
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

// List<Color> getColors() {

//   print(co);
//   return co;
// }

class _HomePageState extends State<HomePage> {
  static Random random = new Random();
  List<Color> co = [];
  int r, g, b = 0;
  @override
  void initState() {
    // getColors();

    for (int i = 0; i <= 200; i++) {
      var a = Color.fromARGB(
        255,
        random.nextInt(255),
        random.nextInt(255),
        random.nextInt(255),
      );
      // j = j + 20;
      // k = k + 20;

      // r++;
      // g++;
      // b++;
      // print(a);
      co.add(a);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dinesh Color",
        ),
      ),
      body: GridView.count(
        crossAxisCount: 10,
        crossAxisSpacing: 5.0,
        mainAxisSpacing: 5.0,
        shrinkWrap: true,
        children: List.generate(
          co.length,
          (index) {
            print(index);
            return GestureDetector(
              onTap: () {
                print(co[index]);
              },
              child: Container(
                height: 200,
                width: 200,
                color: co[index],
              ),
            );
          },
        ),
      ),
    );
  }
}

//   Widget row() {
//     return Container(
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 200,
//               width: 200,
//               color: Colors.red,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 200,
//               width: 200,
//               color: Colors.red,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 200,
//               width: 200,
//               color: Colors.red,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 200,
//               width: 200,
//               color: Colors.red,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 200,
//               width: 200,
//               color: Colors.red,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Container(
//               height: 200,
//               width: 200,
//               color: Colors.red,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
