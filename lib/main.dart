import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: 'hello world',
      home: Home(),
    ));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _color = Colors.black;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(color: _color),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () {
              _color = Colors.red;
              setState(() {});
            },
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
