import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

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
        title: Text("Мнгновенофото"),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          children: [
              Container(
                width: 800,
                color: Color.fromARGB(255, 67, 90, 238),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Петров Сергей Дмитриевич",
                      style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start, children: [
                      const Icon(
                        Icons.person,
                        size: 100,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                        Text("$citate"),
                        TextButton(
                          onPressed: _changeCitate,
                          child: Icon(
                            Icons.play_arrow, 
                            size:  20,
                            color: Color.fromARGB(255, 233, 134, 28)
                          )
                        ),
                      ],)
                    ]),
                ],)
              ,),
              Container(
                width: 800,
                color: Color.fromARGB(255, 145, 192, 239),
                child: 
                  Column(
                    children: [
                      Container(
                        
                        margin: EdgeInsets.all(10),
                        height: 500,
                        width: 400,
                        color: Color.fromARGB(255, 175, 190, 255),
                        child: 
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width:400,
                              color:Color.fromARGB(255, 85, 118, 235),
                              child:const Text("Живопись русских комуналок", style: TextStyle(fontWeight: FontWeight.bold),),  
                            ),
                            Icon(Icons.landscape, size:300),
                            Container(
                              width: 350,
                              height: 50,
                              color: Color.fromARGB(249, 156, 139, 255),
                              child:
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Icon(Icons.share),
                                    Icon(Icons.monitor_heart)
                                  ],
                                )
                            )
                          ],)
                      )
                      
                    ],
                  )
              ),
            // Post holde
        ]),
      ),
    );
  }
}
