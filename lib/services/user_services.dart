part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection = Firestore.instance.collection('users');

  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.document(id).get();

    return User(
      id: id,
      email: snapshot.data['email'],
      name: snapshot.data['nama'],
      nohp: snapshot.data['nohp'],
      alamat: snapshot.data['alamat'],
    );
  }
}