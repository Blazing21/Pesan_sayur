import 'package:flutter/material.dart';
import 'package:supplier_sayur/constant.dart';
import 'package:supplier_sayur/akun/akun_view.dart';
import 'package:supplier_sayur/akun/akun_view.dart';
import 'package:supplier_sayur/service/persons.dart';

class GantiPassword extends StatefulWidget {
  static const String id = "ganti_password";
  Password user;
  @override
  _GantiPasswordState createState() => new _GantiPasswordState(user);
}

class _GantiPasswordState extends State<GantiPassword> {
Password user;
_GantiPasswordState(this.user);
GlobalKey<FormState> formKey = new GlobalKey();
bool _autoValidate = false;


// TextEditingController controllerPassLama;
// TextEditingController controllerPassBaru;
TextEditingController controllerKonfirmPass;

@override
  void initState() {
    // controllerKonfirmPass = new TextEditingController(text: user.konPass);
    // controllerPassBaru = new TextEditingController(text: user.passBaru);
    // controllerPassLama = new TextEditingController(text: user.passLama);
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      resizeToAvoidBottomPadding: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Palette.whiteGrey,
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: const Center(child: Text('Ganti Password')),
        actions: <Widget>[
          IconButton(icon: new Icon(Icons.call, color: Colors.green)),
        ],
      ),
      body: SafeArea(
        child: new Form(
          key: formKey,
          autovalidate: _autoValidate,
          child: Padding(
            padding: EdgeInsets.only(left: 30, right: 30),
            child:  Column(
            children: <Widget>[
              SizedBox(height: 20,),
              new TextFormField(
                // controller: controllerPassLama,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                  hintText: "Password Lama",
                  labelText: "Password Lama",  
                ),
                onSaved: (val){
                  // user.passLama =  val;
                },
              ),
              SizedBox(height: 10,),

              new TextFormField(
                // controller: controllerPassBaru,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                  hintText: "Password Baru",
                  labelText: "Password Baru",
                ),
                onSaved: (val){
                  // user.passBaru = val;
                },
              ),
              SizedBox(height: 10,),

              new TextFormField(
                // controller: controllerKonfirmPass,
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                  hintText: "Konfirmasi Password",
                  labelText: "Konfirmasi Password"
                ),
                onSaved: (val){
                  // user.konPass = val;
                },
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                
                children: <Widget>[
                  new Builder(builder: (BuildContext context){
                    return Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: RaisedButton(
                      color: Palette.darkGreen,
                      child: Text("Simpan", style: TextStyle(color: Colors.white),),
                      onPressed: (){
                        Navigator.of(context).pop();
                      })
                    );
                  })
                ],
              ),
              
              
            ],
          ),)
        ))
    );
  }
}
