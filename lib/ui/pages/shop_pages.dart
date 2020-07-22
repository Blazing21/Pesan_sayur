part of 'pages.dart';

class ShopPage extends StatefulWidget{
  @override 
  _ShopPageState createState() => new _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  @override 
  Widget build(BuildContext context){
    return new SafeArea(
      child: Scaffold(
        appBar: new AppBar(
          title: Center(
            child: Text("Shop"),
          )
        ),
        body: new Container(),
      )
    );
  }
}