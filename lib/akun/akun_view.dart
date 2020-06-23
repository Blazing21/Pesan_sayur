import 'package:flutter/material.dart';
import 'package:supplier_sayur/constant.dart';
import 'package:supplier_sayur/akun/about.dart';
import 'package:supplier_sayur/akun/editProfil.dart';
import 'package:supplier_sayur/akun/gantiPassword.dart';
import 'package:supplier_sayur/login/login_screen.dart';

class AkunPage extends StatefulWidget{
  @override 
  _AkunPageState createState() => new _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {

  @override 
  Widget build(BuildContext context){
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

    final keterangan = Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text('Nama Admin',
            style: TextStyle(
              fontSize: 20.0, 
              color: Palette.darkGreen, 
              fontFamily: 'exo2bold'
            ),
          ),
          
          Text('Nama Pasar',
            style: TextStyle(
              fontSize: 15.0, 
              color: Palette.darkGreen,
              fontStyle: FontStyle.italic, 
              fontFamily: 'exo2italic'
            ),
          ),
        ],
      )
    );

    final editProfil = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Edit Profil                                                       >'),
          onPressed: () {Navigator.of(context).pushNamed(EditProfil.id);},
        )
      ],
    );

    final gantiPassword = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('Ganti Password                                             >'),
          onPressed: () {Navigator.of(context).pushNamed(GantiPassword.id);},
        )
      ],
    );

    final about = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
          child: Text('About                                                              >'),
          onPressed: () {Navigator.of(context).pushNamed(About.id);},
        )
      ],
    );

    Row logout = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Colors.green,
          child: Text('logout', style: TextStyle(color: Colors.white)),
          onPressed: () {Navigator.of(context).pushNamed(LoginScreen.id);}
        )
      ],
    );

      return new Scaffold (
        backgroundColor: Palette.whiteGrey,
        appBar: new AppBar(),
        body: new Center(
          child:  Column(
            children: <Widget>[profil, keterangan, editProfil, gantiPassword, about, logout],
          )
        )
      );
  }
}