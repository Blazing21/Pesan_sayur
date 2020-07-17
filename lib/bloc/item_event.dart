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
