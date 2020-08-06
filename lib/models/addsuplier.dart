part of 'models.dart';

class AddSuplier {
  String name;
  String nohp;
  //List<Item> itemsuplier = List<Item>();

  AddSuplier(
      {this.name = "",
      this.nohp = "",
      //this.itemsuplier
      });//dibuat opsional brrti bisa diisi bisa nggk. dibuat opsional krena ngisinya bertahap dari signuppage dan preference page tidak lngsung sekaligus. Pada splashpage parameter dikosongkan.
}

class Item{
  String namaBarang;
  String harga;
  String satuan;

  Item({this.namaBarang,this.harga,this.satuan});
}