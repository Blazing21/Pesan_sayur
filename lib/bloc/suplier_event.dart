part of 'suplier_bloc.dart';

abstract class SuplierEvent extends Equatable {
  const SuplierEvent();
}

class GetSuplier extends SuplierEvent {
  @override
  List<Object> get props => [];
}

class TambahSuplier extends SuplierEvent {
  final Supplier suplier;

  TambahSuplier(this.suplier);
  
  @override
  List<Object> get props => [suplier];
}

// class TambahItemSuplier extends SuplierEvent {
//   final Supplier supplier;
//   final Map item;

//   TambahItemSuplier(this.supplier, this.item);
  
//   @override
//   List<Object> get props => [supplier];
// }

