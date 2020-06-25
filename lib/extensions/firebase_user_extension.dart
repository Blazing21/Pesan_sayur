part of 'extensions.dart';

extension FirebaseUserExtension on FirebaseUser{

Future<User> fromFireStore() async => await UserServices.getUser(this.uid);//mengambil data User sesuai id dalam bentuk keluaran User

}