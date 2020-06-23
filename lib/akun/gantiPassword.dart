import 'package:flutter/material.dart';
import 'package:supplier_sayur/beranda/beranda_appbar.dart';
import 'package:supplier_sayur/constant.dart';


class GantiPassword extends StatefulWidget {
  static const String id = "ganti_password";
  @override
  _GantiPasswordState createState() => new _GantiPasswordState();
}

class _GantiPasswordState extends State<GantiPassword> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Palette.whiteGrey,
      appBar: new AppBar(),
      body: new Center(
        child: Text('Hello world')
      ),
    );
  }
}
