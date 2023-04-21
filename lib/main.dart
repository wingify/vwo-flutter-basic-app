import 'package:flutter/material.dart';
import 'dart:io';
import 'package:vwo_flutter/vwo_config.dart';
import 'package:vwo_flutter/vwo_flutter.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)  {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                VWOConfig vwoConfig = VWOConfig(userId:"", optOut: false,  disablePreview: true);
                VWO.launch("API_Key", vwoConfig: vwoConfig);
              },
              child: Text('SDK Initialize'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                VWO.getVariationNameForTestKey("Campaign_Key") //Need to provide campaignKey here
                    .then((value) => { print("variation name selected -> ${value}")});
              },
              child: Text('Get Variation'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                VWO.trackConversion("Campaign_Goal"); //Need to provide campagin goal here
              },
              child: Text('Track Conversion'),
            ),
          ],
        ),
      ),
    );
  }
}
