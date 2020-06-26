
import 'package:flutter/material.dart';

import '../constant.dart';
import 'landingpage_view.dart';

class AddBarangSuplier extends StatefulWidget {
  AddBarangSuplier({Key key}) : super(key: key);


  @override
  _AddBarangSuplierState createState() => _AddBarangSuplierState();
}



class _AddBarangSuplierState extends State<AddBarangSuplier> {
  String dropdownValue = "satuan";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.search, color: Colors.green,)
        ],
        
        title: Center(
          child: Text("Tambar Barang"),
        ),
      ),
      body: new SafeArea(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(15),
            child:Column(
              children: <Widget>[
                new TextFormField(
                  //controller: , controller dari nama barang
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                      hintText: "Nama Barang",
                      labelText: "Nama Barang",
                    ),
                    onSaved: (val){
                      //value dari nama barang
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new TextFormField(
                    // controller: , controller dari ha
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        hintText: "Harga",
                        labelText: "Harga",
                      ),
                      onSaved: (val){
                        // value dari harga
                      },
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Flexible(
                          child: TextField(
                            onTap: (){
                              //total value disini
                            },
                            decoration: InputDecoration(hintText: "Total"),)),
                        DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.unfold_more),
                    iconSize: 18,
                    items: <String>['satuan','kg', 'ml', 'ltr', 'kwintal', 'ikat', 'ekor', 'buah']
                    .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(), 
                    onChanged: (String newValue){
                      setState(() {
                        dropdownValue = newValue;
                      });
                    }),
                      ],
                    ),
                    
                    Expanded(child: SizedBox(
                      height: 30,
                    ),),
                    Expanded(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonBar(
                          buttonMinWidth: 100,
                          buttonHeight: 40,
                      children: <Widget>[
                        new Builder(builder: (BuildContext context){
                          return RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            color: Palette.darkGreen,
                            onPressed: (){
                              showProgres();
                            },
                            child: Text("Simpan"),
                          );
                        },)
                      ],
                    ),
                      ],
                    ))
              ],
            )))),
    );
  }

  void showProgres() {
    showDialog(
        context: this.context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.white30, shape: BoxShape.circle),
                child: Center(child: new CircularProgressIndicator())),
          );
        });
  }
}