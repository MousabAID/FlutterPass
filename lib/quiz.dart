import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepOrange),
      body: Center(
        child: Text('Quiz' , style: TextStyle(fontSize: 22 , color: Colors.blue),),
      ),
    );
  }
}