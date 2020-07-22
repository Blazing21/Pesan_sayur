
import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart';
import 'package:suplier_sayur/bloc/blocs.dart';
import 'package:suplier_sayur/models/models.dart';
import 'package:suplier_sayur/shared/shared.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class EditProfil extends StatefulWidget {
  // EditProfil({Key key, this.title}) : super(key: key);
  // String title;
  final User user;
  EditProfil(this.user);

  @override
  _EditProfilState createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  DateTime _date = new DateTime.now();
  // var formatTanggal = new DateFormat('YYYY-MM-dd');
  String filename, masuk;
  File profileImageFile;
  String profilePath;
  var url = "", downUrl ="";
  TextEditingController nameController;
  bool isUpdating = false;
  TextEditingController nohpController;
  TextEditingController alamatController;

@override
  void initState() {
    super.initState();
    nameController = TextEditingController(text: widget.user.name);
    //emailController = TextEditingController(text: widget.user.email);
    nohpController = TextEditingController(text: widget.user.nohp);
    alamatController = TextEditingController(text: widget.user.alamat);
    profilePath = widget.user.profilePicture;
    print(profilePath);
  }

  void showProgres(){
    showDialog(context: this.context,
    builder: (BuildContext context){
      return Dialog(
        elevation: 0,
        backgroundColor: Colors.transparent,
        child: Container(
          height: 90,
          width: 90,
          decoration: BoxDecoration(
            color: Colors.white30, shape: BoxShape.circle),
            child: Center(child: new CircularProgressIndicator()))
      );
    });
  }


  void showAlertDialog(BuildContext c){
    Navigator.of(c).pop();
    showDialog(
      context: this.context,
      builder: (BuildContext context){
        backHome(c);
        return new Dialog(
          backgroundColor: Colors.transparent,
          elevation: 0,
          child: Container(
            height: 90,
            width: 90,
            decoration: BoxDecoration(color: Colors.white30, shape: BoxShape.circle),
            child: Center(
              child: Icon(Icons.check,
              color: Colors.green,
              size: 80),
            ),
          ),
        );
      });
  }

  Future<Timer> backHome(BuildContext c)async{
    return new Timer(Duration(seconds: 3), ()=> popAll(c));
  }

  void popAll(BuildContext c){
    Navigator.of(c).pop();
    Navigator.of(c).pop();
  }

  String validateName(String val){
    return val.length == 0 ? "Tidak Boleh Kosong": null;
  }

  String validateMessage(String val){
    return val.length == 0 ? "Tidak Boleh Kosong" : null;
  }

  void picker() async{
    File img = await ImagePicker.pickImage(
      source: ImageSource.camera, 
      maxHeight: 200.0, 
      maxWidth: 200.0,
    );
    if (img != null) {
      setState(() {
        profileImageFile = img;
        //print(profileImageFilepath);
        filename = basename(profileImageFile.path);
      });
      //uploadImage();
    }
  }
  Future<File> getImage() async {
  var image = await ImagePicker.pickImage(source: ImageSource.gallery);
  return image;
}

  void pickergallery() async{
    File gallery = await ImagePicker.pickImage(
      source: ImageSource.gallery, 
      maxHeight: 200.0,
      maxWidth: 200.0);
      if (gallery != null) {
        setState(() {
          profileImageFile = gallery;
          filename = basename(profileImageFile.path);
          //uploadImage();
        });
      }
  }


  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: (){
          context.bloc<PagesBloc>().add(GoToAkunPage());

          return;
        },
          child: Scaffold(
        resizeToAvoidBottomPadding: true,
        appBar: new AppBar(
          backgroundColor: Colors.green,
          title: const Center(child: Text('Edit Profil')),
          actions: <Widget>[
              new IconButton(icon: new Icon(Icons.call, color: Colors.green)),
          ],
        ),
        body: new SafeArea(
          child: new Form(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.only(right: 8.0, left:8.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 20,
                      ),
                      Stack(
                        children: <Widget>[
                          Center(
                        child: GestureDetector(
                          child: SizedBox(
                            height: 100.0,
                            width: 100.0,
                            child: Container(
                              decoration: BoxDecoration(
                                shape: //profileImageFile != null ?
                                 BoxShape.circle,
                                //: BoxShape.rectangle,
                                //color: Colors.transparent,
                                //borderRadius: BorderRadius.circular(50),
                                image:  DecorationImage(
                                          image: (profileImageFile != null)
                                              ? FileImage(profileImageFile)
                                              : (profilePath != "")
                                                  ? NetworkImage(profilePath)
                                                  : AssetImage(
                                                      "assets/user_pic.png"),
                                          fit: BoxFit.cover)
                                          ),
                            ),
                          ),
                          onTap: (){
                            showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  content: new SingleChildScrollView(
                                    child: new ListBody(
                                      children: <Widget>[
                                        GestureDetector(
                                          child: new Text('Ambil Gambar'),
                                          onTap: (){
                                            Navigator.of(context).pop();
                                            picker();
                                          },
                                        ),
                                        Padding(padding: EdgeInsets.all(8.0)),
                                        GestureDetector(
                                          child: new Text("Pilih dari Galeri"),
                                          onTap: (){
                                            Navigator.of(context).pop();
                                            pickergallery();
                                          },
                                        )
                                      ],
                                    ),
                                  ),
                                );
                              }
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (){
                          showDialog(
                            context: context,
                            builder: (BuildContext context){
                              return AlertDialog(
                                content: new SingleChildScrollView(
                                  child: new ListBody(
                                    children: <Widget>[
                                      GestureDetector(
                                        child: new Text("Ambil Gambar"),
                                        onTap: (){
                                          Navigator.of(context).pop();
                                          picker();
                                        },
                                      ),
                                      Padding(
                                        padding: EdgeInsets.all(8.0)),
                                        GestureDetector(
                                          child: new Text("Pilih dari Galeri"),
                                          onTap: (){
                                            Navigator.of(context).pop();
                                            pickergallery();
                                          },)
                                    ],
                                  ),
                                ),
                              );
                            });
                        },
                        child: Center(
                       child: Container(
                          margin: EdgeInsets.only(top: 85),
                          width: 25,
                          height: 25 ,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(150)
                          ),
                          child: Icon(Icons.add_circle, color: Colors.green,)
                        ),
                        )
                      ),

                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 20, right: 20, top: 10),
                        child: Column(
                          children: <Widget>[
                            new TextFormField(
                              controller: nameController,
                            decoration: InputDecoration(
                               fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                              hintText: "Nama",
                              labelText: "Nama",
                            ),
                            onSaved: (val){
                              // user.passBaru = val;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          // new TextFormField(
                          //   controller: emailController,
                          //   decoration: InputDecoration(
                          //      fillColor: Colors.white,
                          //     filled: true,
                          //     contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                          //     border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                          //     hintText: "Email",
                          //     labelText: "Email",
                          //   ),
                          //   onSaved: (val){
                          //     // user.passBaru = val;
                          //   },
                          // ),
                          // SizedBox(
                          //   height: 10,
                          // ),
                          new TextFormField(
                            controller: nohpController,
                            decoration: InputDecoration(
                               fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                              hintText: "No HP",
                              labelText: "No HP",
                            ),
                            onSaved: (val){
                              // user.passBaru = val;
                            },
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          new TextFormField(
                            controller: alamatController,
                            decoration: InputDecoration(
                               fillColor: Colors.white,
                              filled: true,
                              contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                              hintText: "Alamat",
                              labelText: "Alamat",
                            ),
                            onSaved: (val){
                              // user.passBaru = val;
                            },
                          ),
                          ],
                        ),),
                       
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          ButtonBar(
                        children: <Widget>[
                          new Builder(builder: (BuildContext context){
                            return RaisedButton(

                              color: Palette.darkGreen,
                              onPressed: () async {
                                 //showProgres();
                                // _onSave(context);
                                // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => AkunPage()));
                                //Navigator.of(context).pop();
                                if (profileImageFile != null) {
                                              profilePath = await uploadImage(
                                                  profileImageFile);
                                            }
                                context.bloc<UserBloc>().add(
                                                UpdateData(
                                                    name: nameController.text,
                                                    nohp: nohpController.text,
                                                    alamat: alamatController.text,
                                                    profileImage: profilePath));

                                context.bloc<PagesBloc>().add(GoToAkunPage());
                              },
                              child: Text("Simpan"),
                            );
                          },)
                        ],
                      ),
                        ],
                      )
                  ],
                ),
                ),
            ))),
      ),
    );
  }
}