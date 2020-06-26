

import 'package:flutter/material.dart';
import 'package:supplier_sayur/componen/detail_TransTiket.dart';

class OrderTicket extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(padding: EdgeInsets.only(left: 10, right: 10),
        child: Card(
          borderOnForeground: true,
          elevation: 1.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: SizedBox(
            width: 250,
            height: 150,
            child: Column(
              children: <Widget>[
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                        top: new Radius.circular(10.0)
                        ),
                    // color: Colors.pink[200].withOpacity(0.95),
                  ),
                  width: double.infinity,
                  height: 60.0,
                  child: Text(' #001'),
                ),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text('Anwar End', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text('Deliveri at: 2020-05-06 09:34:00'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text('Jln. Melur no 1A gomong kec. selaparang kota mataram'),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text(" Rp: 50000", style: TextStyle(fontWeight: FontWeight.bold),),),
                      FlatButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailTiketTrans()));
                      },
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Text("Detail", style: TextStyle(color: Colors.white),))
                    ],
                  )
                )
              ],
            ),
          )
        ),
        ),
          Padding(padding: EdgeInsets.only(left: 10, right: 10),
        child: Card(
          borderOnForeground: true,
          elevation: 1.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: SizedBox(
            width: double.infinity,
            height: 150,
            child: Column(
              children: <Widget>[
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                        top: new Radius.circular(10.0)
                        ),
                    // color: Colors.pink[200].withOpacity(0.95),
                  ),
                  width: double.infinity,
                  height: 60.0,
                  child: Text(' #002'),
                ),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text('Anwar End', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text('Deliveri at: 2020-05-06 09:34:00'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text('Jln. Melur no 1A gomong kec. selaparang kota mataram'),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text(" Rp: 50000", style: TextStyle(fontWeight: FontWeight.bold),),),
                      FlatButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailTiketTrans()));
                      },
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Text("Detail", style: TextStyle(color: Colors.white),))
                    ],
                  )
                )
              ],
            ),
          )
        ),
        ),
        Padding(padding: EdgeInsets.only(left: 10, right: 10),
        child: Card(
          borderOnForeground: true,
          elevation: 1.5,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          ),
          child: SizedBox(
            width: double.infinity,
            height: 150,
            child: Column(
              children: <Widget>[
                Expanded(child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(
                        top: new Radius.circular(10.0)
                        ),
                    // color: Colors.pink[200].withOpacity(0.95),
                  ),
                  width: double.infinity,
                  height: 60.0,
                  child: Text(' #003'),
                ),),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text('Anwar End', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text('Deliveri at: 2020-05-06 09:34:00'),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Center(
                      child: Text('Jln. Melur no 1A gomong kec. selaparang kota mataram'),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    children: <Widget>[
                      Expanded(child: Text(" Rp: 50000", style: TextStyle(fontWeight: FontWeight.bold),),),
                      FlatButton(onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailTiketTrans()));
                        
                      },
                      color: Colors.green,
                      shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))
                      ),
                      child: Text("Detail", style: TextStyle(color: Colors.white),))
                    ],
                  )
                )
              ],
            ),
          )
        ),
        ),
      ],
    );
  }
}

class Deliveries extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}

class Complete extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}