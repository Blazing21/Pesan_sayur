part of 'pages.dart';


class AddBarangSuplier extends StatefulWidget {
  final AddSuplier addsuplier;
  AddBarangSuplier(this.addsuplier);


  @override
  _AddBarangSuplierState createState() => _AddBarangSuplierState();
}



class _AddBarangSuplierState extends State<AddBarangSuplier> {
  int selectedAmount = 0;
  TextEditingController namaBarangController = TextEditingController();
  TextEditingController hargaController = TextEditingController();
  String dropdownValue = "satuan";
  List<Item> barang = List<Item>();
  //List<Map> result = List<Map>();
  //Item item;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          Icon(Icons.search, color: Colors.green,)
        ],
        
        title: Center(
          child: Text("Tambar Barang"),
        ),
      ),
      body: new SafeArea(
        child: Form(
          child: Padding(
            padding: EdgeInsets.all(15),
            child:Column(
              children: <Widget>[
                new TextFormField(
                  //controller: , controller dari nama barang
                  controller: namaBarangController,
                    decoration: InputDecoration(
                        fillColor: Colors.white,
                      filled: true,
                      contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                      hintText: "Nama Barang",
                      labelText: "Nama Barang",
                    ),
                    onSaved: (val){
                      //value dari nama barang
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  new TextField(
                     onChanged: (text) {
                        String temp = '';

                        for (int i = 0; i < text.length; i++) {
                          temp += text.isDigit(i)
                              ? text[i]
                              : ''; //temp akan ditambahkan angka jika text.isDigitnya true kalau false menambahkan string kosong.
                        }

                        setState(() {
                          selectedAmount = int.tryParse(temp) ??
                              0; //mengubah temp menjadi bentuk integer.
                        }); // disetState agar tetap berubah2 ketika onChanged.

                        hargaController.text = NumberFormat.currency(
                                locale: 'id_ID',
                                symbol: '',
                                decimalDigits: 0)
                            .format(selectedAmount);

                        hargaController
                                .selection = //menetapkan posisi kursor agar tetap dikanan ketika diisi.
                            TextSelection.fromPosition(TextPosition(
                                offset: hargaController.text.length));
                      },
                    controller: hargaController,
                      decoration: InputDecoration(
                        fillColor: Colors.white,
                        filled: true,
                        contentPadding: EdgeInsets.fromLTRB(15.0, 10.0, 15.0, 10.0),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0)),
                        hintText: "Harga",
                        labelText: "Harga",
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        // Flexible(
                        //   child: TextField(
                        //     onTap: (){
                        //       //total value disini
                        //     },
                        //     decoration: InputDecoration(hintText: "Total"),)),
                        DropdownButton<String>(
                    value: dropdownValue,
                    icon: Icon(Icons.unfold_more),
                    iconSize: 18,
                    items: <String>['satuan','kg', 'ml', 'ltr', 'kwintal', 'ikat', 'ekor', 'buah']
                    .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(), 
                    onChanged: (String newValue){
                      setState(() {
                        dropdownValue = newValue;
                      });
                    }),
                      ],
                    ),
                    
                    Expanded(child: SizedBox(
                      height: 30,
                    ),),
                    Expanded(
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        ButtonBar(
                          buttonMinWidth: 100,
                          buttonHeight: 40,
                      children: <Widget>[
                        new Builder(builder: (BuildContext context){
                          return Column(
                            children: <Widget>[
                              RaisedButton(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                                ),
                                color: Palette.darkGreen,
                                onPressed: (){
                                  Item item = Item(namaBarang: namaBarangController.text, harga: hargaController.text, satuan: dropdownValue);
                                  Map<String, dynamic> itemMap = {
                                    "namaBarang"  : item.namaBarang,
                                    "harga"       : item.harga,
                                    "satuan"      : item.satuan
                                  };
                                  Supplier suplier = Supplier(name: widget.addsuplier.name, nohp: widget.addsuplier.nohp);
                                  //print(suplier.name);
                                  context.bloc<SuplierBloc>().add(TambahSuplier(suplier));
                                  context.bloc<ItemBloc>().add(TambahItemSuplier(suplier,itemMap));

                                  context.bloc<PagesBloc>().add(GoToMainPage());
                                  //widget.addsuplier.itemsuplier = Item(namaBarang: namaBarangController.text, harga: hargaController.text, satuan: dropdownValue);
                                  //showProgres();
                                },
                                child: Text("Simpan"),
                              ),
                              // RaisedButton(
                              //   shape: RoundedRectangleBorder(
                              //     borderRadius: BorderRadius.all(Radius.circular(20))
                              //   ),
                              //   color: Palette.darkGreen,
                              //   onPressed: (){
                              //     //Supplier suplier = Supplier(name: widget.addsuplier.name, nohp: widget.addsuplier.nohp, itemsuplier: widget.addsuplier.itemsuplier );
                              //     //print(suplier.itemsuplier);
                              //     //context.bloc<SuplierBloc>().add(TambahSuplier(suplier));
                              //   },
                              //   child: Text("Simpan"),
                              // ),
                            ],
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

  void showProgres() {
    showDialog(
        context: this.context,
        builder: (BuildContext context) {
          return Dialog(
            elevation: 0,
            backgroundColor: Colors.transparent,
            child: Container(
                height: 90,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.white30, shape: BoxShape.circle),
                child: Center(child: new CircularProgressIndicator())),
          );
        });
  }
}