part of 'pages.dart';

class SplashPage extends StatelessWidget {
  static const String id = "launcher_screen";
  @override
  Widget build(BuildContext context) {
    var image = new Image.asset(
        "assets/logo_ss.png",
        height: 150.0,
        width: 150.0,
      );
    return Scaffold(
        appBar: AppBar(
          title: Text("Splash Page"),
        ),
        body: Center(
          
          child: Stack(
            children:<Widget>[ 
              Center(child: image,),
              RaisedButton(
                child: Text("Go To Sign In Page"),
                onPressed: () {
                  context.bloc<PagesBloc>().add(GoToLoginPage());
                }),
                ]
          ),
        ));
  }
}
