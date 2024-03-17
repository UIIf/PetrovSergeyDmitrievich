import 'package:flutter/material.dart';
import 'dart:math';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  List<String> citates = [
    'Если волк молчит, то лучше его не перебивать',
    'Если тебя обсуждают за спиной, значит ты впереди',
    'Волк слабее льва и тигра но в цырке не выступает',
    'Ты живешь как карта ляжет, я жвиу как мама скажет',
    'Работа не волк, работа ворк',
  ];
  String citate = "Обычная волчья цитата";

  void _changeCitate() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      citate = citates[Random().nextInt(citates.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    var catImg = const AssetImage("assets/Cat.jpg");
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text("Мнгновенофото"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(children: [
          Container(
            width: 800,
            color: const Color.fromARGB(255, 67, 90, 238),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Петров Сергей Дмитриевич",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.person,
                        size: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(citate),
                          TextButton(
                              onPressed: _changeCitate,
                              child: const Icon(Icons.play_arrow,
                                  size: 20,
                                  color:  Color.fromARGB(255, 233, 134, 28))),
                        ],
                      )
                    ]),
              ],
            ),
          ),
          Container(
              width: 800,
              color: const Color.fromARGB(255, 145, 192, 239),
              child: Column(
                children: [
                  // One post
                  Container(
                      margin: const EdgeInsets.all(10),
                      height: 500,
                      width: 400,
                      color: const Color.fromARGB(255, 175, 190, 255),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 50,
                            width: 400,
                            color: const Color.fromARGB(255, 85, 118, 235),
                            child: const Text(
                              "Паблик работников 5/2",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Image(image:catImg, ),
                          Container(
                              width: 350,
                              height: 50,
                              color: const Color.fromARGB(249, 156, 139, 255),
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Icon(Icons.share),
                                  Icon(Icons.monitor_heart)
                                ],
                              )
                            )
                        ],
                      )
                    ),
                    //One post end
                ],
              )
            ),
          // Post holde
        ]),
      ),
    );
  }
}
