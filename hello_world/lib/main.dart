import 'package:flutter/material.dart';
//import 'package:hello_world/dummy.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Trying not to fuck up', home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  // Another way to return MyHomePageState (line 21)
  //   @override
  // _MyHomePageState createState() => _MyHomePageState();
  @override
  _MyHomePageState createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
      //_counter++ is the same function
    });
  }

  void _resetCounter() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Button Whore',
            style: TextStyle(color: Colors.lime, fontSize: 40),
          ),
          Text(
            '$_counter',
            style: TextStyle(color: Colors.deepPurpleAccent, fontSize: 80),
          ),
          RaisedButton(
            onPressed: _resetCounter,
            child: Text('Reset'),
          )
        ],
      )),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        child: Icon(Icons.add_circle),
      ),
    );
  }
}
