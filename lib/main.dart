
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:temp_application/generated/locale_keys.g.dart';
import 'dart:math';


void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('ru'), Locale('en')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      child: const MyApp()
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Flutter Demo',
      theme: ThemeData(
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
      LocaleKeys.citate_1,
      LocaleKeys.citate_2,
      LocaleKeys.citate_3,
      LocaleKeys.citate_4,
      LocaleKeys.citate_5,
    ];
  String cur_citate = LocaleKeys.default_citate;

  void _changeCitate() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      cur_citate = citates[Random().nextInt(citates.length)];
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
        title: Text(LocaleKeys.app_name.tr()),
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
                        Text("${cur_citate.tr()}"),
                        Row(
                          children: [
                            TextButton(
                              onPressed:() {
                                if (context.locale == const Locale("ru")){
                                  context.setLocale(const Locale("en"));
                                } else {
                                  context.setLocale(const Locale("ru"));
                                }
                              },
                              child: const Icon(
                                Icons.flag,
                                size:20,
                                color: Color.fromARGB(255, 233, 133, 28)
                              )
                            ),
                            TextButton(
                                  onPressed: _changeCitate,
                                  child: const Icon(
                                    Icons.play_arrow,
                                      size: 20,
                                      color:Color.fromARGB(255, 233, 134, 28)
                                  )
                            ),
                          ],
                        )
                        
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
                              child: Text(LocaleKeys.public_name.tr(), style: TextStyle(fontWeight: FontWeight.bold),),  
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
