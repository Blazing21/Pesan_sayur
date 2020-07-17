import 'package:flutter/material.dart';
import 'package:supplier_sayur/shop/progres_shop.dart';

class ShopPage extends StatefulWidget{
  @override 
  _ShopPageState createState() => new _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override 
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar(
        title: Center(
          child: Text("Shop"),
        ),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, pos){
          return GestureDetector(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProgressShop() ));
            },
            child: listShop(context),
          );
        })
    );
  }

  Widget listShop(BuildContext context){
    var bgColor;
    bgColor = Colors.white;
    return Container(
        color: bgColor,
        child: Card(
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
                          Center(
                            child: InkWell(
                              child: Icon(Icons.keyboard_arrow_down),
                              onTap: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ProgressShop() ));
                              },
                            )
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      );
  }
}