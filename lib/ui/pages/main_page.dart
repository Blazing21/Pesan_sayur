part of 'pages.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _bottomNavCurrentIndex = 0;
  
  List<Widget> _container = [
    BlocBuilder<SuplierBloc,SuplierState>(
      builder:(_, suplierState) => 
      BerandaPage(suplierState.suplier),),
    ShopPage(),
    TransaksiPage(),
    HistoryPage(),
    AkunPage(),
    ];
  
  @override
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
            Icons.home,
            color: Palette.darkGreen,
          ),
          icon: new Icon(
            Icons.home,
            color: Palette.darkGrey,
          ),
          title: new Text(
            'Supplier'
          ),
        ),
        
        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.assignment,
            color: Palette.darkGreen,
          ),
          icon: new Icon(
            Icons.assignment,
            color: Palette.darkGrey,
          ),
          title: new Text(
            'Shop'
          ),
        ),

        BottomNavigationBarItem(
          activeIcon: new Icon(
            Icons.mail,
            color: Palette.darkGreen,
          ),
          icon: new Icon(
            Icons.mail,
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
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: Text("Main Page"),
  //     ),
  //     body: Center(
  //       child: Column(
  //         mainAxisAlignment: MainAxisAlignment.center,
  //         children: <Widget>[
  //           BlocBuilder<UserBloc, UserState>(
  //               builder: (_, userState) => (userState is UserLoaded)
  //                   ? Text(userState.user.name)
  //                   : SizedBox()),
  //           RaisedButton(
  //               child: Text("Sign Out"),
  //               onPressed: () {
  //                 AuthServices.signOut();
  //               }),
  //         ],
  //       ),
  //     ),
  //   );
  // }
}
