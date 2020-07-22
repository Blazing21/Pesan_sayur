part of 'user_bloc.dart';

abstract class UserEvent extends Equatable {
  const UserEvent();
}

class LoadUser extends UserEvent{
  final String id;
  

  LoadUser(this.id); // memberikan id user ketika event dipanggil di wrapper dan id nantinya akan menjadi property dari class UserEvent
  @override
  // TODO: implement props
  List<Object> get props => [id];
}

class SignOut extends UserEvent{
  
  @override
  // TODO: implement props
  List<Object> get props => [];

}

class UpdateData extends UserEvent {
  final String name;
  final String nohp;
  final String alamat;
  final String profileImage;

  UpdateData({this.name,this.nohp,this.alamat,this.profileImage});

  @override
  List<Object> get props => [name,nohp,alamat, profileImage];
}
