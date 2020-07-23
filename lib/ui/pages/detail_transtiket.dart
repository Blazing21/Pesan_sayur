part of 'pages.dart';

class DetailTiketTrans extends StatefulWidget {
  @override
  _DetailTiketTransState createState() => _DetailTiketTransState();
}

class _DetailTiketTransState extends State<DetailTiketTrans> {
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
        child: Card(
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Date :"),
                        Text("2020-05-06 09:34:00"),
                      ],
                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Name :"),
                        Text("2020-05-06 09:34:00"),
                      ],
                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Phone :"),
                        Text("2020-05-06 09:34:00"),
                      ],
                    ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Address :"),
                        Text("2020-05-06 09:34:00"),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Total :"),
                        Text("2020-05-06 09:34:00"),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Methon :"),
                        Text("2020-05-06 09:34:00"),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Status :"),
                        Text("2020-05-06 09:34:00"),
                      ],
                    ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Text("Note :"),
                        Text("2020-05-06 09:34:00"),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ),
        ),
    ),
    );
  }
}