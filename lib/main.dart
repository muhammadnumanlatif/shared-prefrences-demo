import 'package:flutter/material.dart';
import '/shared_prefrences_helprt.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shared Prefrences Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Shared Prefrences Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  SharedPrefrencesHelper _prefrencesHelper = SharedPrefrencesHelper();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shared Prefrences Demo"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  _prefrencesHelper.setListInPrefrences();
                },
                child: Text("Save Data"),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  _prefrencesHelper.getStringFromPrefrences();
                  _prefrencesHelper.getIntFromPrefrences();
                  _prefrencesHelper.getBoolFromPrefrences();
                  _prefrencesHelper.getDoubleFromPrefrences();
                  _prefrencesHelper.getListFromPrefrences();
                },
                child: Text(" Get Data "),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  _prefrencesHelper.removeData("bool");
                },
                child: Text("Delete Data"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
