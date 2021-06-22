import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var number = 0;
  void increase() {
    setState(() {
      number = number + 1;
    });
  }

  void decrease() {
    setState(() {
      number = number - 1;
    });
  }

  void reset() {
    setState(() {
      number = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Score Changer'),
        ),
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                'The score is ',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Center(
                child: Text(
              number.toString(),
              style: TextStyle(fontSize: 80, color: Colors.red),
            )),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 20,
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: Text('Increase'),
                  onPressed: increase,
                ),
                SizedBox(
                  width: 20,
                ),
                RaisedButton(
                  color: Colors.blue,
                  child: Text('Decrease'),
                  onPressed: decrease,
                ),
              ],
            ),
            SizedBox(
              height: 150,
            ),
            FloatingActionButton(
              child: Text('R'),
              onPressed: reset,
            )
          ],
        ),
      ),
    );
  }
}
