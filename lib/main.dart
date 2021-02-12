import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http_request_get/country_list.dart';
import 'package:http_request_get/second_page.dart';
import 'country_list.dart';
import 'package:http_request_get/jsonDataFile.dart';
import 'package:rxdart/rxdart.dart';
import 'dart:convert';
//import 'jsonDataFile.dart' as jsonData;


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,

      //   routes: {
      //   '/page1':(context)=>CountryList(),
      //   '/page2':(context)=>Page2(title: "Second page",),
      //   '/page3':(context)=>Page3(title: "Third page",),
      //   '/page4':(context)=>Page4(title: "Fourth page",),
      // },
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CountryList()
      // home: SecondPageWidget(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;


  @override
  void initState() {
    //fetchData();
    super.initState();
  }

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
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
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("list"),
        ),
        body: SingleChildScrollView(
          child: Text(
                  "listResponse[1].toString()"
                ),
        ),
        // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
