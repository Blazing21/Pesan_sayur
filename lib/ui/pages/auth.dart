part of 'pages.dart';


class Auth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider.value(
      value: AuthServices.userStream,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => PagesBloc()),
          BlocProvider(create: (_) => UserBloc()),
          BlocProvider(create: (_) => SuplierBloc()),
        ],
        child: MaterialApp(
            theme: new ThemeData(
            fontFamily: 'exo 2',
            primaryColor: Colors.green,
            accentColor: Colors.white,
          ),
          title: 'Supplier Sayur',
          debugShowCheckedModeBanner: false, 
          home: Wrapper())),
    );
  }
}