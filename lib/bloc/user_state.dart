part of 'user_bloc.dart';

abstract class UserState extends Equatable {
  const UserState();
}

class UserInitial extends UserState {
  @override
  List<Object> get props => [];
}

class UserLoaded extends UserState {
  final User user;
  UserLoaded(this.user); // menerima keluaran user pada parameter dan user nntinya akan menjadi property dari UserState
  @override
  List<Object> get props => [user];
}
