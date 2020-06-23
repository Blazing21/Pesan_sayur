import 'package:flutter/material.dart';
import 'package:supplier_sayur/constant.dart';
import 'dart:async';
import 'package:supplier_sayur/landingpage/landingpage_view.dart';
import 'package:supplier_sayur/login/login_screen.dart';

class LauncherPage extends StatefulWidget {
  static const String id = "launcher_screen";
  @override
  _LauncherPageState createState() => new _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override

  void initState(){
    super.initState();
    startLaunching();
  }

  startLaunching() async {
    var duration = const Duration(seconds: 5);
    return new Timer(duration, (){
      Navigator.of(context).pushReplacement(new MaterialPageRoute(builder: (_){
        return new LoginScreen();
      }));
    });
  }

  Widget build(BuildContext context) {

    var image = new Image.asset(
        "assets/logo_ss.png",
        height: 150.0,
        width: 150.0,
      );
    return new Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: new Center(
        child: image,),
    );
  }
}