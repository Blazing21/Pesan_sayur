

import 'package:flutter/material.dart';

import '../constant.dart';

class AddSuplier extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Suplier"),
        ),
      ),
      body: new SafeArea(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(15),
            child:Column(
              children: <Widget>[
                new TextFormField(
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                      hintText: "Nama",
                      labelText: "Nama",
                    ),
                    onSaved: (val){
                      
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new TextFormField(
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        hintText: "No Hp",
                        labelText: "No Hp",
                      ),
                      onSaved: (val){
                        
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