
import 'package:flutter/material.dart';

class DetailTiketTrans extends StatefulWidget {
  @override
  _DetailTiketTransState createState() => _DetailTiketTransState();
}

class _DetailTiketTransState extends State<DetailTiketTrans> {
  String date = "2020-05-06 09:34:00";
  String name = "Pesan Sayur";
  String phone = "085238718978";
  String alamat = "jl melur no 1 gomong selaparang";
  String total = "Rp. 46,000";
  String methon = "E-Wallet";
  String status = "PAID";
  String note = "-";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.search, color: Colors.green,)
        ],
        title: Center(
          child: Text("Detail Transaksi"),
        ),
      ),
      body: Container(
      child: Padding(padding: EdgeInsets.only(left: 10, right: 10),
        child: Column(
          children: <Widget>[
            Card(
              borderOnForeground: true,
              elevation: 1.5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: SizedBox(
                width: double.infinity,
                height: 200,
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(
                            top: new Radius.circular(10.0)
                            ),
                        // color: Colors.pink[200].withOpacity(0.95),
                      ),
                      width: double.infinity,
                      // height: 50.0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Card(
                            child: Text(' #001'),
                            color: Colors.green,
                          ),
                          Expanded(
                            child: Center(
                            child: Text('User Info', style: TextStyle(fontWeight: FontWeight.bold),),
                          ))
                        ],
                      )
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(child: Text("Date"),),
                            Expanded(child: Text(": $date"))
                          ],
                        ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(child: Text("Name"),),
                            Expanded(child: Text(": $name"))
                          ],
                        ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(child: Text("Phone"),),
                            Expanded(child: Text(": $phone"))
                          ],
                        ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(child: Text("Address"),),
                            Expanded(child: Text(": $alamat"))
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(child: Text("Total"),),
                            Expanded(child: Text(": $total"))
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(child: Text("Methon"),),
                            Expanded(child: Text(": $methon"))
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text("Status "),),
                            Expanded(
                              child: Text(": $status"))
                          ],
                        ),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text("Note "),),
                            Expanded(child: Text(": $note"))
                          ],
                        ),
                      ],
                    ),),
                  ],
                ),
              )
            ),
            Card(
              child: Padding(padding: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Text("Ordered Items", style: TextStyle(fontWeight: FontWeight.bold),),
                  SizedBox(
                    height: 10,
                  ),
                  Table(
                          children: [
                            TableRow(
                              children: [
                                Text("Nama", style: TextStyle(fontWeight: FontWeight.bold), ),
                                Text("Jumlah", style: TextStyle(fontWeight: FontWeight.bold), ),
                                Text("Satuan", style: TextStyle(fontWeight: FontWeight.bold), ),
                                Text("Harga", style: TextStyle(fontWeight: FontWeight.bold), )
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
                ],
              ),),
            ),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Text("Delivery Detail", style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(child: Text("Courier"),),
                              Expanded(child: Text(": Pesan Sayur"))
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(child: Text("Time"),),
                              Expanded(child: Text(": 2020-05-06 09:34:00"))
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(child: Text("Methon"),),
                              Expanded(child: Text(": $methon"))
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text("Status "),),
                              Expanded(
                                child: Text(": $status"))
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Text("Note "),),
                              Expanded(child: Text(": $note"))
                            ],
                          ),
                  ],
                ),
              ),
            )
          ],
        ),
        ),
    ),
    );
  }
}