

part of 'models.dart';

//model untuk cast dari film.


class User extends Equatable {
  final String id;
  final String email;
  final String name;
  final String nohp;
  final String alamat;
  final String profilePicture;
  
User copyWith({String name, String nohp, String alamat, String profilePicture}) =>
      User(this.id, this.email,
          name: name ?? this.name, 
          nohp: nohp ?? this.nohp,
          alamat: alamat ?? this.alamat,
          profilePicture: profilePicture ?? this.profilePicture);

  User(this.id, this.email, {this.name, this.nohp, this.alamat,this.profilePicture});

  @override
  // TODO: implement props
  List<Object> get props => [id,email,name,nohp,alamat,profilePicture];
}