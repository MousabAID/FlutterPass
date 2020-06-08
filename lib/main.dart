import 'package:flutter/material.dart';
import './quiz.dart';
import './camera.dart';
import './weather.dart';
import './gallery.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage( ),
    );
  }
}

class MyHomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('1er APP'), backgroundColor: Colors.deepOrange),
      body: Center(
        child: Text('Body of the app' , style: TextStyle(fontSize: 22 , color: Colors.blue),),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            new DrawerHeader(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.deepOrange , Colors.white])
                ),
                child: Center(
                  child: Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('images/logo.jpg'),
                    ),
                  ),
                )
            ),
            ListTile(
              title: Text('Quize' , style: TextStyle (fontSize: 20)),
              onTap : () {
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Quiz()),
                );
              },
            ),
            Divider(height: 4, color: Colors.deepOrange ),
            ListTile(
              title: Text('Weather', style: TextStyle (fontSize: 20)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Weather()),
                );
              },
            ),
            Divider(height: 4, color: Colors.deepOrange),
            ListTile(
              title: Text('Gallery' , style: TextStyle (fontSize: 20)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Gallery()),
                );
              },
            ),
            Divider(height: 4, color: Colors.deepOrange),
            ListTile(
              title: Text('Camera' , style: TextStyle (fontSize: 20)),
              onTap: (){
                Navigator.of(context).pop();
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CameraPage()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}