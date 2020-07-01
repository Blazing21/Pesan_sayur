part of 'pages.dart';

class AkunPage extends StatefulWidget{
    // static const String id = "akun";
  @override 
  _AkunPageState createState() => new _AkunPageState();
}

class _AkunPageState extends State<AkunPage> {

  @override 
  Widget build(BuildContext context){
    final profil = Hero(
          tag: 'hero',
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: CircleAvatar(
              radius:50.0,
              backgroundColor: Colors.transparent,
              backgroundImage: AssetImage('assets/user_pic.png'),
            )

          ),
        );

    final keterangan = Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget>[
          Text('Nama Admin',
            style: TextStyle(
              fontSize: 20.0, 
              color: Palette.darkGreen, 
              fontFamily: 'exo2bold'
            ),
          ),
          
          Text('Nama Pasar',
            style: TextStyle(
              fontSize: 15.0, 
              color: Palette.darkGreen,
              fontStyle: FontStyle.italic, 
              fontFamily: 'exo2italic'
            ),
          ),
        ],
      )
    );

    final editProfil = Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[ 
          BlocBuilder<UserBloc, UserState>(
            builder: (_, userState) {
          FlatButton(
            child: Center(
              child: Row(
            children: <Widget>[
              Text("Edit Profil"),
              SizedBox(width: 190),
              Icon(Icons.arrow_forward_ios, size: 16,)
            ],
          ),
            ),
          
              onPressed: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfil()));
            context.bloc<PagesBloc>().add(GoToEditProfilPage((userState as UserLoaded).user));
          }
            //},
          //)
          
        );
            })
        ]
    );

    final gantiPassword = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text("Ganti Password"),
              SizedBox(width: 150),
              Icon(Icons.arrow_forward_ios, size: 16,)
            ],
          ),
            ),
          onPressed: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context) => GantiPassword()));
          },
        ),
      ],
    );

    final about = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        FlatButton(
            child: Center(
              child: Row(
            children: <Widget>[
              Text("About"),
              SizedBox(width: 210),
              Icon(Icons.arrow_forward_ios, size: 16,)
            ],
          ),
            ),
          onPressed: (){
            //Navigator.push(context, MaterialPageRoute(builder: (context) => About()));
          },
        ),
      ],
    );

    Row logout = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          color: Palette.darkGreen,
          child: Text('logout', style: TextStyle(color: Colors.white)),
          //onPressed: () {Navigator.of(context).pushNamed(LoginScreen.id);}
        )
      ],
    );

    return new Scaffold (
      appBar: new AppBar(
        title: const Center(child: Text('Akun')),
      ),
      body: new Center(
        child:  Column(
          children: <Widget>[profil, keterangan, editProfil, gantiPassword, about, logout],
        )
      )
    );
  }
}