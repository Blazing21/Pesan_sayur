part of 'item_bloc.dart';

abstract class ItemEvent extends Equatable {
  const ItemEvent();
}

class TambahItemSuplier extends ItemEvent {
  final Supplier supplier;
  final Map item;

  TambahItemSuplier(this.supplier, this.item);
  
  @override
  List<Object> get props => [supplier];
}

class AmbilItemSuplier extends ItemEvent {
  final String nohp;

  AmbilItemSuplier(this.nohp);
  
  @override
  List<Object> get props => [nohp];
}
