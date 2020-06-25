

part of 'models.dart';

//model untuk cast dari film.


class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String nohp;
  final String alamat;
  


  User({this.id, this.email, this.name, this.nohp, this.alamat});

  @override
  // TODO: implement props
  List<Object> get props => [id,email,name,nohp,alamat];
}