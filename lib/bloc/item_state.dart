part of 'item_bloc.dart';

abstract class ItemState extends Equatable {
  const ItemState();
}

class ItemInitial extends ItemState {
  @override
  List<Object> get props => [];
}
class ItemLoaded extends ItemState {
  final List<Item> item;
  ItemLoaded(this.item);
  @override
  List<Object> get props => [];
}
