import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:supplier_sayur/launcher/launcher_view.dart';

void main() async {
  FlutterError.onError = (FlutterErrorDetails details){
    FlutterError.dumpErrorToConsole(details);
    if(kReleaseMode)
    exit(1);
  };
  WidgetsFlutterBinding.ensureInitialized();
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
      home: LauncherPage(),
    );
  }
}
