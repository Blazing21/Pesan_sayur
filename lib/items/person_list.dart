

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ListPerson extends StatelessWidget {
  int position;
  ListPerson({this.position = 0});
  @override
  Widget build(BuildContext context) {
    var bgColor;
    bgColor = Colors.white10;
    // if (position % 2 == 0 ) {
    //   bgColor = Colors.white10;
    // }else{
    //   bgColor = Colors.white;
    // }
    return Container(
      color: bgColor,
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Container(
          child: Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: AssetImage("assets/profil.png"), fit: BoxFit.cover)
                ),
              ),),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Expanded(child: Text("Pesan Sayur"),),
                      Icon(Icons.message),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.phone)
                    ],
                  ),)),
                  
            ],
          ),
        )
        ),


    );
  }
}