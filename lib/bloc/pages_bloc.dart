import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:suplier_sayur/bloc/blocs.dart';
import 'package:suplier_sayur/models/models.dart';

part 'pages_event.dart';
part 'pages_state.dart';

class PagesBloc extends Bloc<PagesEvent, PagesState> {
  @override
  PagesState get initialState => OnInitialPage();

  @override
  Stream<PagesState> mapEventToState(
    PagesEvent event,
  ) async* {
    // if(event is GoToSplashPage){ //eventnya merupakan class
    //   yield OnSplashPage();//mengembelikan salah satu konstruktor pada pagestate
    // } else 
    if(event is GoToLoginPage){
      yield OnLoginPage();
    }
    else if(event is GoToMainPage){
      yield OnMainPage();
    }
    else if(event is GoToAddSuplierPage){
      yield OnAddSuplierPage(event.addsuplier);
    }else if(event is GoToEditProfilPage){
      yield OnEditProfilPage(event.user);
    }else if(event is GoToAkunPage){
      yield OnAkunPage();
    }else if(event is GoToAddBarangPage){
      yield OnAddBarangPage(event.addsuplier);
    }else if(event is GoToDetailPage){
      yield OnDetailPage(event.nama,event.nohp,event.items);
    }
  }
}
