

import 'package:flutter/material.dart';
import 'package:supplier_sayur/landingpage/detail_suplier.dart';

import '../constant.dart';
import 'editProfil.dart';
import 'package:url_launcher/url_launcher.dart' as UrlLauncher;

class Profil extends StatefulWidget{
    // static const String id = "akun";
  @override 
  _ProfilState createState() => new _ProfilState();
}

class _ProfilState extends State<Profil> {

  @override 
  Widget build(BuildContext context){

    return new Scaffold (
      appBar: new AppBar(
        title: const Center(child: Text('Akun')),
      ),
      body: new Center(
        child:  Column(
          children: <Widget>[
            Hero(
          tag: 'hero',
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius:50.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/profil.png'),
            )

          ),
        ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Text('Nama Admin',
                    style: TextStyle(
                      fontSize: 20.0, 
                      color: Palette.darkGreen, 
                      fontFamily: 'exo2bold'
                    ),
                  ),
                  Text("085238718978", 
                  style: TextStyle(
                    color: Palette.darkGreen
                  ),),
                  Text('Pasar Kebon Roek',
                    style: TextStyle(
                      fontSize: 15.0, 
                      color: Palette.darkGreen,
                      fontFamily: 'exo2italic'
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: new Container(
                            child:Row(
                              children: <Widget>[
                                Icon(Icons.sms),
                                Text("SMS"),
                              ],
                            )
                          ),
                          onTap: (){
                            Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfil()));
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.phone),
                                Text("Telepon"),
                              ],
                            ),
                          ),
                          onTap: (){
                            UrlLauncher.launch("tel:+6285238718978");
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Table(
                      border: TableBorder.all(),
                      children: [
                        TableRow(
                          children: [
                            Text("Nama", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                            Text("Jumlah", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                            Text("Satuan", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                            Text("Harga", style: TextStyle(fontWeight: FontWeight.bold), textAlign: TextAlign.center,)
                          ]),
                          TableRow(
                          children: [
                            Text("Jeruk"),
                            Text("10"),
                            Text("Kg"),
                            Text("Rp. 15.000")
                          ]),
                          TableRow(
                          children: [
                            Text("Sayur"),
                            Text("5"),
                            Text("Ikat"),
                            Text("Rp. 500.000")
                          ]),
                          TableRow(
                          children: [
                            Text("Pisang"),
                            Text("1"),
                            Text("Sisir"),
                            Text("Rp. 23.000")
                          ]),
                      ],
                    ),
                    FlatButton(
                      color: Colors.lightBlue,
                      shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30))
                            ),
                      onPressed: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddBarangSuplier()));
                      }, 
                      child: Icon(Icons.add, color: Colors.white,))
                ],
              )
            )],
        )
      )
    );
  }
}