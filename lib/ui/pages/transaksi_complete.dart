
import 'package:flutter/material.dart';

class CompleteItem extends StatefulWidget {
  @override
  _CompleteItemState createState() => _CompleteItemState();
}

class _CompleteItemState extends State<CompleteItem> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_,index){
        return Card(
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
                        // Navigator.of(context).push(MaterialPageRoute(builder: (context)=> DetailTiketTrans()));
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
        );
      },
    );
  }
}