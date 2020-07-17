import 'package:flutter/material.dart';
import 'package:supplier_sayur/akun/akun_view.dart';
import 'package:supplier_sayur/constant.dart';
import 'package:supplier_sayur/beranda/beranda_view.dart';
import 'package:supplier_sayur/history/history_view.dart';
import 'package:supplier_sayur/shop/shop_view.dart';
import 'package:supplier_sayur/transaksi/transaksi_view.dart';

class LandingPage extends StatefulWidget{
  static String id = 'landing-page';
  @override 
  _LandingPageState createState() => new _LandingPageState();
}

class _LandingPageState extends State<LandingPage>{
int _bottomNavCurrentIndex = 0;
  List<Widget> _container = [
    BerandaPage(),
    ShopPage(),
    TransaksiPage(),
    HistoryPage(),
    AkunPage(),
  ];

  @override 
  Widget build(BuildContext context){
    return new Scaffold(
      body: _container[_bottomNavCurrentIndex],
      bottomNavigationBar: _buildBottomNavigation()
      );
  }

  Widget _buildBottomNavigation(){
    return new BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (index){
        setState(() {
          _bottomNavCurrentIndex = index;
        });
      },
      currentIndex: _bottomNavCurrentIndex,

      items:[
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.contacts,
            color: Palette.darkGreen,
          ),
          icon: new Icon(
            Icons.contacts,
            color: Palette.darkGrey,
          ),
          title: new Text(
            'Supplier'
          ),
        ),
        
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.shopping_cart,
            color: Palette.darkGreen,
          ),
          icon: new Icon(
            Icons.shopping_cart,
            color: Palette.darkGrey,
          ),
          title: new Text(
            'Shop'
          ),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.transform,
            color: Palette.darkGreen,
          ),
          icon: new Icon(
            Icons.transform,
            color: Palette.darkGrey,
          ),
          title: new Text(
            'Transaksi'
          ),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.history,
            color: Palette.darkGreen,
          ),
          icon: new Icon(
            Icons.history,
            color: Palette.darkGrey,
          ),
          title: new Text(
            'History'
          ),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.person,
            color: Palette.darkGreen,
          ),
          icon: new Icon(
            Icons.person,
            color: Palette.darkGrey,
          ),
          title: new Text(
            'Akun'
          ),
        ),
      ],
    );
  }
}