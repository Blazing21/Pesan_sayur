
import 'package:flutter/material.dart';

import '../constant.dart';

class ProgressShop extends StatefulWidget {
  @override
  _ProgressShopState createState() => _ProgressShopState();
}

class _ProgressShopState extends State<ProgressShop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Center(
          child: Text("Progress Pembelian"),
        )
      ),
      body: Container(
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.white,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(10))
                  // ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Container(
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.all(5.0),
                            child: Container(
                                height: 60.0,
                                width: 60.0,
                                decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    image: DecorationImage(
                                        image: new AssetImage("assets/profil.png"), fit: BoxFit.cover)),
                              ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  Text("Pesan Sayur",
                                    style: TextStyle(
                                        fontSize: 18,
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text("Orders: 5",
                                      style:
                                          TextStyle(fontSize: 12, color: Colors.black54)),
                                  Text(
                                    "Selling Prace: Rp. 20.000",
                                    style: TextStyle(color: Colors.black45, fontSize: 12),
                                  ),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  color: Colors.white,
                  // shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(10))
                  // ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Text('Supplier', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Center(
                                child: Text('Supplier 1'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Center(
                                child: Text('35,000/kg'),
                              ),
                            ),
                          ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Center(
                                child: Text('Supplier 2'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Center(
                                child: Text('20,000/kg'),
                              ),
                            ),
                          ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Center(
                                child: Text('Supplier 1'),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Center(
                                child: Text('40,000/kg'),
                              ),
                            ),
                          ),
                          ],
                        )
                      ],
                    ),
                  )),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    color: Colors.white,
                  //   shape: RoundedRectangleBorder(
                  //   borderRadius: BorderRadius.all(Radius.circular(10))
                  // ),
                    child: Form(
                      child: Padding(
                            padding: EdgeInsets.all(20),
                            child: Column(
                              children: <Widget>[
                                Text('Form Pembelian', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.green),),
                                SizedBox(
                                  height: 10,
                                ),
                                new TextFormField(
                                decoration: InputDecoration(
                                   fillColor: Colors.white,
                                  filled: true,
                                  contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                                  hintText: "Supplier",
                                  labelText: "Supplier",
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
                                  hintText: "Harga Beli",
                                  labelText: "Harga Beli",
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
                                  hintText: "Harga Jual",
                                  labelText: "Harga Jual",
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
                                  hintText: "Total Beli",
                                  labelText: "Total Beli",
                                ),
                                onSaved: (val){
                                  
                                },
                              ),
                              FlatButton(
                                  color: Palette.darkGreen,
                                  onPressed: (){},
                                  child: Text("Submit", style: TextStyle(color: Colors.white),),
                                )
                              ],
                            ),),
                    ),
                         
                  )
              ],
            ),
          ),
        ),
    );
  }
}