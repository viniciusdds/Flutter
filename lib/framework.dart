import 'package:flutter/material.dart';

void main(){
  runApp(new application());
}

class application extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: 'Stateless Widget',
      home: new Scaffold(
        body: new Container(
          color: Colors.pink,
          child: new Container(
            color: Colors.yellow,
            margin: const EdgeInsets.all(30.0),
          ),
        ),
      ),
    );
  }
}