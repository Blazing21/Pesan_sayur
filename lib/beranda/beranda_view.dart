import 'package:flutter/material.dart';
import 'package:supplier_sayur/beranda/beranda_appbar.dart';
import 'package:supplier_sayur/constant.dart';
import 'package:supplier_sayur/items/person_list.dart';


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
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('Daftar Supplier')),
        leading: new IconButton(icon: new Icon(Icons.arrow_back_ios, color: Colors.green)),
        actions: <Widget>[
            new IconButton(icon: new Icon(Icons.search, color: Colors.white)),
        ],
      ),
      body: ListView(
        
        shrinkWrap: true,
        children: <Widget>[
          ListPerson(),
          Divider(
            color: Colors.black,
          ),
          ListPerson(),
          Divider(
            color: Colors.black,
          ),
          ListPerson(),
          Divider(
            color: Colors.black,
          ),
          ListPerson(),
          Divider(
            color: Colors.black,
          ),
          ListPerson(),
          Divider(
            color: Colors.black,
          ),
          ListPerson(),
          Divider(
            color: Colors.black,
          ),
          ListPerson(),
          Divider(
            color: Colors.black,
          ),
          ListPerson(),

        ],
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
