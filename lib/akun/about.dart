import 'package:flutter/material.dart';
import 'package:supplier_sayur/constant.dart';
import 'package:supplier_sayur/akun/akun_view.dart';

class About extends StatefulWidget{
  static const String id ="about";
  @override 
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About>{
  @override 
  Widget build(BuildContext context){
    final paragraf = Padding(
      padding: EdgeInsets.all(20.0),
      child: Text(
        'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.',
        textAlign: TextAlign.justify,
      ),
    );

    return new Scaffold(
      backgroundColor: Palette.whiteGrey,
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('About')),
        actions: <Widget>[
            new IconButton(icon: new Icon(Icons.call, color: Colors.green)),
        ],
      ),

      body: new Center(
        child:  Column(
          children: <Widget>[paragraf,]
        )
      ),

    );
  } 
}