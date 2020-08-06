part of 'pages.dart';

class Profil extends StatefulWidget{
  final String nama;
  final String nohp;
  final List<Item> items;
  Profil(this.nama,this.nohp,this.items);
    // static const String id = "akun";
  @override 
  _ProfilState createState() => new _ProfilState();
}

class Name {
  String firstName;
  String lastName;

  Name({this.firstName, this.lastName});
}
class _ProfilState extends State<Profil> {
  var items = Item();
  @override 
  Widget build(BuildContext context){
    
    return new Scaffold (
      appBar: new AppBar(
        title: const Center(child: Text('Akun')),
      ),
      body: new Center(
        child:  Column(
          children: <Widget>[
            Hero(
          tag: 'hero',
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: CircleAvatar(
              radius:50.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/user_pic.png'),
            )

          ),
        ),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: Column(
                children: <Widget>[
                  Text('${widget.nama}',
                    style: TextStyle(
                      fontSize: 20.0, 
                      color: Palette.darkGreen, 
                      fontFamily: 'exo2bold'
                    ),
                  ), 
                  Text('${widget.nohp}', 
                  style: TextStyle(
                    color: Palette.darkGreen
                  ),),
                  Text('Pasar Kebon Roek',
                    style: TextStyle(
                      fontSize: 15.0, 
                      color: Palette.darkGreen,
                      fontFamily: 'exo2italic'
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        InkWell(
                          child: new Container(
                            child:Row(
                              children: <Widget>[
                                Icon(Icons.sms),
                                Text("SMS"),
                              ],
                            )
                          ),
                          onTap: (){
                            //Navigator.of(context).push(MaterialPageRoute(builder: (context) => EditProfil()));
                          },
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        InkWell(
                          child: Container(
                            child: Row(
                              children: <Widget>[
                                Icon(Icons.phone),
                                Text("Telepon"),
                              ],
                            ),
                          ),
                          onTap: (){
                            //UrlLauncher.launch("tel:+6285238718978");
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Tabel(items: widget.items,)
                    // FlatButton(
                    //   color: Colors.lightBlue,
                    //   shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.all(Radius.circular(30))
                    //         ),
                    //   onPressed: (){
                    //     //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AddBarangSuplier()));
                    //   }, 
                    //   child: Icon(Icons.add, color: Colors.white,))
                ],
              )
            )],
        )
      )
    );
  }
}

class Tabel extends StatelessWidget {
  final List<Item> items;
  Tabel({this.items});
  
  @override
  Widget build(BuildContext context) {
    print(items);
    return ListView.builder(
                        shrinkWrap: true,
                  scrollDirection: Axis.horizontal, //scroll kesamping
                  itemCount: items.length,
                  itemBuilder: (_, index) {
                    return Container(
                      child: Text(items[index].namaBarang),
                    );
                  });
  }
}