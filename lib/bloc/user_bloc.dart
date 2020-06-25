import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:suplier_sayur/models/models.dart';
import 'package:suplier_sayur/services/services.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  @override
  UserState get initialState => UserInitial();

  @override
  Stream<UserState> mapEventToState(
    UserEvent event,
  ) async* {
    if (event is LoadUser) {
      // kalo eventnya LoadUser
      User user = await UserServices.getUser(event
          .id); // memanggil fungsi getUser dengan memberikan parameter event.id(karena id merupakan property dari LoadUser yang merupakan turunan dari UserEvent) yang merupakan id yang didapat pada event LoadUser(id)-pada wrapper- dan krena LoadUser merupakan turunan dari UserEvent sehingga id yang diterima pada parameter LoadUser(id)di wrapper diterima pada Class UserEvent yang menjadi objek event.
      yield UserLoaded(user); //menerima parameter user dan memberikan isi parameter user nntinya kepada Class UserState yang property user dipanggil pada blocbuilder
    } else if (event is SignOut) {
      yield UserInitial();
  }
}
}