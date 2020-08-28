import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:suplier_sayur/bloc/blocs.dart';
import 'package:suplier_sayur/models/models.dart';
import 'package:suplier_sayur/services/services.dart';

part 'suplier_event.dart';
part 'suplier_state.dart';

class SuplierBloc extends Bloc<SuplierEvent, SuplierState> {
  @override
  // SuplierState get initialState => SuplierState([]);
  SuplierBloc() : super(SuplierState([]));
  @override
  Stream<SuplierState> mapEventToState(
    SuplierEvent event,
  ) async* {
    if(event is TambahSuplier) {
      await SupplierServices.saveSuplier(event.suplier); //meyimpan data suplier kedalam firebase

      List<Supplier> suplier = state.suplier + [event.suplier]; //objek suplier yang merupakan list of suplier akan menampung nilai list suplier yang saat ini ditambah dengan suplier yang baru.
      //state brrti mereturn currentState pada bloc
      yield SuplierState(suplier);
    } else if(event is GetSuplier) {
      List<Supplier> suplier = await SupplierServices.getSuplier(); //mengambil data tickets menurut userID pada firebase dan ditampung pada objek tickets.

      yield SuplierState(suplier); //mengembalikan state dengan parameter tickets yang menampung nilai data yang baru diambil dari firebase.
    }// } else if (event is TambahItemSuplier){
    //   await SupplierServices.addItem(event.supplier, event.item);

    //   yield
    // }
  }
}
