part of 'services.dart';


class SupplierServices{

  static CollectionReference suplierCollection =
      Firestore.instance.collection('suplier');

      static Future<void> saveSuplier(
      Supplier supplier) async {
    await suplierCollection.document(supplier.nohp).setData({
      //'suplierid': supplier.suplierid,
      'nama': supplier.name,
      'nohp': supplier.nohp,
      //'itemsuplier': supplier.itemsuplier
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
            //itemsuplier: e.data['itemsuplier']
            //alamat: e.data['alamat'],
            //foto: e.data['foto']
            ))
        .toList();
  }

  static Future<void> addItem(Supplier supplier, itemMap) async {
    await Firestore.instance.collection("suplier")
    .document(supplier.nohp)
    .collection("item")
    .add(itemMap).catchError((e){print(e.toString());});
  }

}