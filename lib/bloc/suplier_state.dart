part of 'suplier_bloc.dart';

class SuplierState extends Equatable {
  final List<Supplier> suplier;

  const SuplierState(this.suplier);

  @override
  // TODO: implement props
  List<Object> get props =>[suplier];
}


