import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:suplier_sayur/bloc/blocs.dart';
import 'package:suplier_sayur/models/models.dart';
import 'package:suplier_sayur/services/services.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  ItemState get initialState => ItemInitial();
  //ItemBloc() : super(ItemInitial());

  @override
  Stream<ItemState> mapEventToState(
    ItemEvent event,
  ) async* {
    if (event is TambahItemSuplier){
     await SupplierServices.addItem(event.supplier, event.item);

    yield ItemInitial();
     }
  }
}
