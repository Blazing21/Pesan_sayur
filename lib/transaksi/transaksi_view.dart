import 'package:flutter/material.dart';
import 'package:supplier_sayur/items/transaksi_items.dart';

import 'package:supplier_sayur/landingpage/landingpage_view.dart';

class TransaksiPage extends StatefulWidget{
  @override 
  _TransaksiPageState createState() => new _TransaksiPageState();
}

class _TransaksiPageState extends State<TransaksiPage> {

  @override 
  Widget build(BuildContext context){
    return new DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: new AppBar(
          title: Center(
            child: Text("Transaksi"),
          ),
          bottom: TabBar(tabs: [
            Tab(icon: Icon(Icons.confirmation_number),text: "Orders",),
            Tab(icon: Icon(Icons.directions_car), text: "Deliveries",),
            Tab(icon: Icon(Icons.check_circle), text: "Completed",)
          ]),
        ),
        body: TabBarView(
          children: [
            OrderTicket(),
            Icon(Icons.directions_car),
            Icon(Icons.check_circle),
          ])
      )
    );
  }
}