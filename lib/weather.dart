import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrange),
      body: Center(
        child: Text('WEATHER' , style: TextStyle(fontSize: 22 , color: Colors.blue),),
      ),
    );
  }
}