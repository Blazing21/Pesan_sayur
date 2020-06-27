import 'package:flutter/material.dart';
import 'package:supplier_sayur/akun/profil.dart';
import 'package:supplier_sayur/items/person_list.dart';
import 'package:supplier_sayur/landingpage/add_suplier.dart';


class BerandaPage extends StatefulWidget {
  static const String id = "home_screen";
  @override
  _BerandaPageState createState() => new _BerandaPageState();
}

class _BerandaPageState extends State<BerandaPage> {
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: const Center(child: Text('Daftar Supplier')),
        actions: <Widget>[
            new IconButton(icon: new Icon(Icons.search, color: Colors.white)),
        ],
      ),
      body: Container(
        child: ListView.builder(
          shrinkWrap: true,
          itemBuilder: (context, pos){
            return GestureDetector(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profil()));
              },
              child: Column(
                children: <Widget>[
                  ListPerson(),
                  Divider(
                    color: Colors.black,
                  )
                ],
              )
            );
          },
      ),
      ),
      
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.green,
        tooltip: 'Increment Counter',
        onPressed: () { 
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddSuplier()));
         },
        child: const Icon(Icons.add,
        color: Colors.white),
      ),
    );
  }
}
