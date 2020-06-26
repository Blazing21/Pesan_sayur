
import 'package:flutter/material.dart';
import 'package:supplier_sayur/landingpage/detail_suplier.dart';

import '../constant.dart';

class AddSuplier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.search, color: Colors.green,)
        ],
        title: Center(
          child: Text("Suplier"),
        ),
        leading: new IconButton(icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Navigator.of(context).pop();
          }),
      ),
      body: new SafeArea(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(15),
            child:Column(
              children: <Widget>[
                new TextFormField(
                  //controller: , controler dari nama
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                      hintText: "Nama",
                      labelText: "Nama",
                    ),
                    onSaved: (val){
                      // value dari nama disini
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new TextFormField(
                    //controller: , contoler no hp
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        hintText: "No Hp",
                        labelText: "No Hp",
                      ),
                      onSaved: (val){
                       //value dari no hp disini
                      },
                    ),
                    Expanded(child: SizedBox(
                      height: 30,
                    ),),
                    Expanded(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonBar(
                      children: <Widget>[
                        new Builder(builder: (BuildContext context){
                          return RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            color: Palette.darkGreen,
                            onPressed: (){
                              Navigator.pushReplacement (context, MaterialPageRoute(builder: (context)=> AddBarangSuplier() ));
                            },
                            child: Text("Next"),
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
  
}