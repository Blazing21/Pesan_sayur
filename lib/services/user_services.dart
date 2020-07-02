part of 'services.dart';

class UserServices {
  static CollectionReference _userCollection = Firestore.instance.collection('users');

  static Future<void> updateUser(User user) async {
    

    _userCollection.document(user.id).setData({
      'email' : user.email,
      'nama' : user.name,
      'alamat' : user.alamat,
      'nohp' : user.nohp,
      'profilePicture' : user.profilePicture ?? null
    });

  }


  static Future<User> getUser(String id) async {
    DocumentSnapshot snapshot = await _userCollection.document(id).get();

    return User(
      id,
      snapshot.data['email'],
      name: snapshot.data['nama'],
      nohp: snapshot.data['nohp'],
      alamat: snapshot.data['alamat'],
      profilePicture: snapshot.data['profilePicture'],
    );
  }
}