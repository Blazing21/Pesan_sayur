part of 'shared.dart';

Future<String> uploadImage(File image) async {
  String fileName = basename(image.path); //path merupakan file ekstensi seperti  jpg,png dll. jadi nama image digabung dengan file ekstensi.

  StorageReference ref = FirebaseStorage.instance.ref().child(fileName); //mengarahkan ke objek firebasestorage dengan nama filename.
  StorageUploadTask task = ref.putFile(image);//mengupload file
  StorageTaskSnapshot snapshot = await task.onComplete;//minta kembalian

  return await snapshot.ref.getDownloadURL();//mereturn hasil kembalian dari task
}