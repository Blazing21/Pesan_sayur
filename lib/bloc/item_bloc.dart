import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:suplier_sayur/bloc/blocs.dart';
import 'package:suplier_sayur/models/models.dart';
import 'package:suplier_sayur/services/services.dart';

part 'item_event.dart';
part 'item_state.dart';

class ItemBloc extends Bloc<ItemEvent, ItemState> {
  @override
  ItemState get initialState => ItemLoaded([]);
  // ItemBloc() : super(ItemLoaded([]));

  @override
  Stream<ItemState> mapEventToState(
    ItemEvent event,
  ) async* {
    if (event is TambahItemSuplier){
     await SupplierServices.addItem(event.supplier, event.item);

      yield ItemLoaded([]);
     }else if(event is AmbilItemSuplier){
       List<Item> item = await SupplierServices.getItem(event.nohp);
      yield ItemLoaded(item);
     }
  }
}
