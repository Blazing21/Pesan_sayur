part of 'pages_bloc.dart';

abstract class PagesEvent extends Equatable {
  const PagesEvent();
}

// class GoToSplashPage extends PagesEvent {
//   @override
//   List<Object> get props => [];
// }

class GoToLoginPage extends PagesEvent {
  @override
  List<Object> get props => [];
}
class GoToMainPage extends PagesEvent {
  @override
  List<Object> get props => [];
}
class GoToAddSuplierPage extends PagesEvent {
  final Supplier suplier;
  GoToAddSuplierPage(this.suplier);
  @override
  List<Object> get props => [];
}
class GoToEditProfilPage extends PagesEvent {
  final User user;
  GoToEditProfilPage(this.user);
  @override
  List<Object> get props => [];
}