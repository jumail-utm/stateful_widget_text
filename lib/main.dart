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
  get color => _color;
  set color(value) => setState(() => _color = value);

  double _size = 50.0;
  get size => _size;
  set size(value) => setState(() => _size = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Hello World',
          style: TextStyle(
            color: _color,
            fontSize: size,
          ),
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          FloatingActionButton.extended(
            onPressed: () => color = Colors.red,
            label: Text('Red'),
            backgroundColor: Colors.red,
          ),
          FloatingActionButton.extended(
            onPressed: () => color = Colors.blue,
            label: Text('Blue'),
            backgroundColor: Colors.blue,
          ),
        ],
      ),
      bottomSheet: SizedBox(
        height: 100,
        child: Slider(
          value: size,
          min: 10,
          max: 100,
          onChanged: (value) => size = value,
        ),
      ),
    );
  }
}
