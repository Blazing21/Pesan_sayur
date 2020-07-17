part of 'pages_bloc.dart';

abstract class PagesState extends Equatable {
  const PagesState();
}

class OnInitialPage extends PagesState {
  @override
  List<Object> get props => [];
}

class OnLoginPage extends PagesState {
  @override
  List<Object> get props => [];
}

// class OnSplashPage extends PagesState {
//   @override
//   List<Object> get props => [];
// }
class OnMainPage extends PagesState {
  @override
  List<Object> get props => [];
}
class OnAddSuplierPage extends PagesState {
  final AddSuplier addsuplier;
  OnAddSuplierPage(this.addsuplier);
  @override
  List<Object> get props => [];
}
class OnEditProfilPage extends PagesState {
  final User user;
  OnEditProfilPage(this.user);
  @override
  List<Object> get props => [];
}

class OnAkunPage extends PagesState {
  @override
  List<Object> get props => [];
}
class OnAddBarangPage extends PagesState {
  final AddSuplier addsuplier;
  OnAddBarangPage(this.addsuplier);
  @override
  List<Object> get props => [];
}
