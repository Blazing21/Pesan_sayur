import 'package:flutter/material.dart';
import 'package:supplier_sayur/beranda/beranda_appbar.dart';
import 'package:supplier_sayur/constant.dart';


class BerandaPage extends StatefulWidget {
  static const String id = "home_screen";
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Palette.whiteGrey,
      appBar: new AppBar(),
      body: new Center(
        child: Text('Hello world')
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: 'Increment Counter',
        onPressed: () {  },
        child: const Icon(Icons.add,
        color: Colors.white),
      ),
    );
  }
}
