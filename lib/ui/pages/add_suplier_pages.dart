part of 'pages.dart';

class AddSuplier extends StatelessWidget {
  final Supplier suplier;

  AddSuplier(this.suplier);

  TextEditingController nameController = TextEditingController();
  TextEditingController nohpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.search, color: Colors.green,)
        ],
        title: Center(
          child: Text("Suplier"),
        ),
        leading: new IconButton(icon: new Icon(Icons.arrow_back_ios, color: Colors.white),
        onPressed: () {
          Navigator.of(context).pop();
          }),
      ),
      body: new SafeArea(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(15),
            child:Column(
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
                      // value dari nama disini
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new TextFormField(
                    controller: nohpController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        hintText: "No Hp",
                        labelText: "No Hp",
                      ),
                      onSaved: (val){
                       //value dari no hp disini
                      },
                    ),
                    Expanded(child: SizedBox(
                      height: 30,
                    ),),
                    Expanded(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonBar(
                      children: <Widget>[
                        new Builder(builder: (BuildContext context){
                          return RaisedButton(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            color: Palette.darkGreen,
                            onPressed: () async {
                              //Navigator.pushReplacement (context, MaterialPageRoute(builder: (context)=> AddBarangSuplier() ));
                            
                              Supplier suplier = Supplier(name: nameController.text, nohp: nohpController.text);

                              context.bloc<SuplierBloc>().add(TambahSuplier(suplier));
                              context.bloc<PagesBloc>().add(GoToMainPage());
                            },
                            child: Text("Next"),
                          );
                        },)
                      ],
                    ),
                      ],
                    ))
              ],
            )))),
    );
    
  }
  
}