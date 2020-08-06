part of 'models.dart';

class Supplier extends Equatable {
  //final String suplierid;
  final String name;
  final String nohp;
  //final List itemsuplier;
  //final String foto;

  Supplier(
      {this.name, this.nohp, //this.itemsuplier
      //this.alamat, this.foto
      });//kalo picture tidak diisi maka defaultnya null.

  @override
  List<Object> get props => [name, nohp];
}