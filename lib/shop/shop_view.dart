import 'package:flutter/material.dart';

import 'package:supplier_sayur/landingpage/landingpage_view.dart';

class ShopPage extends StatefulWidget{
  @override 
  _ShopPageState createState() => new _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override 
  Widget build(BuildContext context){
    return new SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: Center(
            child: Text("Shop"),
          )
        ),
        body: new Container(),
      )
    );
  }
}