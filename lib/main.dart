import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:suplier_sayur/bloc/pages_bloc.dart';
import 'package:suplier_sayur/bloc/user_bloc.dart';
import 'package:suplier_sayur/services/services.dart';

import 'ui/pages/pages.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return StreamProvider.value(
    //   value: AuthServices.userStream,
    //   child: MultiBlocProvider(
    //     providers: [
    //       BlocProvider(create: (_) => PagesBloc()),
    //       BlocProvider(create: (_) => UserBloc())
    //     ],
    //     child: MaterialApp(
    //         theme: new ThemeData(
    //         fontFamily: 'exo 2',
    //         primaryColor: Colors.green,
    //         accentColor: Colors.white,
    //       ),
    //       title: 'Supplier Sayur',
    //       debugShowCheckedModeBanner: false, 
    //       home: Wrapper())),
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Supplier Sayur',
      theme: new ThemeData(
        //fontFamily: 'exo 2',
        primaryColor: Colors.green,
        accentColor: Colors.white,
      ),
      home: LauncherPage(),
    );
  }
}


