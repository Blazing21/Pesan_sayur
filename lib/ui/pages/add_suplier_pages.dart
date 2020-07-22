part of 'pages.dart';

class AddSuplierPages extends StatefulWidget {
  final AddSuplier addsuplier;

  AddSuplierPages(this.addsuplier);

  @override
  _AddSuplierPagesState createState() => _AddSuplierPagesState();
}

class _AddSuplierPagesState extends State<AddSuplierPages> {
  TextEditingController nameController = TextEditingController();

  TextEditingController nohpController = TextEditingController();

  @override
  void initState() { 
    super.initState();
    nameController.text = widget.addsuplier.name;
    nohpController.text = widget.addsuplier.nohp;
  }

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
                            onPressed: ()  {
                              //Navigator.pushReplacement (context, MaterialPageRoute(builder: (context)=> AddBarangSuplier() ));
                            
                              //Supplier suplier = Supplier(name: nameController.text, nohp: nohpController.text);

                              //context.bloc<SuplierBloc>().add(TambahSuplier(suplier));
                              widget.addsuplier.name = nameController.text;
                              widget.addsuplier.nohp = nohpController.text;
                              context.bloc<PagesBloc>().add(GoToAddBarangPage(widget.addsuplier));
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