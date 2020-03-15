import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'hello world',
      home: Home(),
    ));

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('Hello World'),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Red'),
            backgroundColor: Colors.red,
          ),
          FloatingActionButton.extended(
            onPressed: () {},
            label: Text('Blue'),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
