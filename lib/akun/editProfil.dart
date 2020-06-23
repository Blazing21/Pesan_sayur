import 'package:flutter/material.dart';
import 'package:supplier_sayur/beranda/beranda_appbar.dart';
import 'package:supplier_sayur/constant.dart';
import 'package:supplier_sayur/akun/editProfil.dart';


class EditProfil extends StatefulWidget {
  static const String id = "edit_profil";
  @override
  _EditProfilState createState() => new _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  
  @override
  Widget build(BuildContext context) {
    final profil = Hero(
      tag: 'hero',
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: CircleAvatar(
          radius:50.0,
          backgroundColor: Colors.transparent,
          backgroundImage: AssetImage('assets/profil.png'),
        )

      ),
    );
    return new Scaffold(
      backgroundColor: Colors.white,
      appBar: new AppBar(),
      body: new Center(
        child:  Column(
          children: <Widget>[profil,]
        )
      )
    );
  }
}
