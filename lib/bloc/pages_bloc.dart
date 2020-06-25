import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'pages_event.dart';
part 'pages_state.dart';

class PagesBloc extends Bloc<PagesEvent, PagesState> {
  @override
  PagesState get initialState => OnInitialPage();

  @override
  Stream<PagesState> mapEventToState(
    PagesEvent event,
  ) async* {
    if(event is GoToSplashPage){ //eventnya merupakan class
      yield OnSplashPage();//mengembelikan salah satu konstruktor pada pagestate
    }
    else if(event is GoToLoginPage){
      yield OnLoginPage();
    }
    else if(event is GoToMainPage){
      yield OnMainPage();
    }
  }
}
