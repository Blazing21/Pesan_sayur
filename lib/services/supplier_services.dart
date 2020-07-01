part of 'services.dart';


class SupplierServices{

  static CollectionReference suplierCollection =
      Firestore.instance.collection('suplier');

      static Future<void> saveSuplier(
      Supplier supplier) async {
    await suplierCollection.document().setData({
      //'suplierid': supplier.suplierid,
      'nama': supplier.name,
      'nohp': supplier.nohp,
    });
  }

  static Future<List<Supplier>> getSuplier() async {
    QuerySnapshot snapshot = await suplierCollection.getDocuments();//mengambil document-document terlebih dahulu

    var documents = snapshot.documents //documents = kumpulan dokumen
        ;//mengambil semua document pada firebase.

    return documents
        .map((e) => Supplier( //dimaping menjadi Suplier
            //suplierid: e.data['suplierid'],
            name: e.data['nama'],
            nohp: e.data['nohp'],
            //alamat: e.data['alamat'],
            //foto: e.data['foto']
            ))
        .toList();
  }
}