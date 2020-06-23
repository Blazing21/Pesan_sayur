import 'package:flutter/material.dart';
import 'package:supplier_sayur/akun/about.dart';
import 'package:supplier_sayur/akun/gantiPassword.dart';
import 'package:supplier_sayur/akun/editProfil.dart';
import 'package:supplier_sayur/constant.dart';
import 'package:supplier_sayur/launcher/launcher_view.dart';
import 'package:supplier_sayur/login/login_screen.dart';
import 'package:supplier_sayur/landingpage/landingpage_view.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supplier Sayur',
      theme: new ThemeData(
        fontFamily: 'exo 2',
        primaryColor: Colors.green,
        accentColor: Colors.white,
      ),
      initialRoute: LauncherPage.id,
      routes: {
        LauncherPage.id: (context) => LauncherPage(),
        LoginScreen.id: (context) => LoginScreen(),
        LandingPage.id: (context) => LandingPage(),
        About.id: (context) => About(),
        EditProfil.id: (context) => EditProfil(),
        GantiPassword.id: (context) => GantiPassword(),
      },
    );
  }
}

