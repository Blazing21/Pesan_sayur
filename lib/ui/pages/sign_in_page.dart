part of 'pages.dart';

class SignInPage extends StatefulWidget {
  static const String id ="login_screen";
  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isEmailValid = false; //mencatat email valid atau tidak
  bool isPasswordValid = false; //mencatat password valid atau tidak
  bool isSigningIn = false; //mencatat apakah sedang melakukan proses Sign In atau tidak
  @override
  Widget build(BuildContext context){    
    final logo = Hero(
      tag: 'hero',
        child: Image.asset("assets/logo_ss.png",
        height: 150.0,
        width: 150.0,
        ),
    
    );
    
    final email = TextFormField(
      onChanged: (text) {
        // text merupakan text yang diketikkan pada textfield
        setState(() {
          isEmailValid = EmailValidator.validate(
          text); //mengecek objek text pada parameter validate apakah emailnya valid atau tidak sehingga keluarannya menjadi true jika email valid. Sehingga jika emailnya valid nilai dari isEmailValid akan berubah menjadi true dan akan disetState.
          });
        },
      controller: emailController,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      //initialValue: '',
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: 'Email',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final password = TextFormField(
      onChanged: (text) {
        setState(() {
          isPasswordValid = text.length >= 6; //jika panjang password lebih dari sama dengan 6 makan nilainya true. Sehinggan isPasswordValid nilainya akan berubah menjadi true dan disetState.
          });
        },
      controller: passwordController,
      autofocus: false,
      //initialValue: '',
      obscureText: true,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: 'Password',
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(32.0)),
      ),
    );

    final loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: isSigningIn ? SpinKitFadingCircle(color: Colors.white,) : RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        //onPressed: () {
          //Navigator.pushReplacement (context, MaterialPageRoute(builder: (context)=> LandingPage() ));
          onPressed: isEmailValid && isPasswordValid
                                ? () async {
                                    setState(() { //supaya tidak ngelag dan memberikan proses indikator
                                      isSigningIn = true; //jika true maka dalam proses untuk masuk. pengambilan data ke firestore dsb. menampilkan spinkit
                                    });

                                    SignInSignUpResult result =
                                        await AuthServices.signIn(
                                            emailController.text,
                                            passwordController.text);

                                    if(result.user == null){
                                      setState(() {
                                        isSigningIn = false; //berarti proses untuk masuknya disetStatenya beres. Namun disetState pada saat result.usernya = null.
                                      });
                                      Flushbar( //memberikan pesan error jika result.user == null dalam bentuk bar.
                                        duration: Duration(seconds: 4),
                                        flushbarPosition: FlushbarPosition.TOP,
                                        backgroundColor: Color(0xFFFF5C83),
                                        message: result.message,
                                      )..show(context);
                                    }

                                  }
                                : null,
                                
        //},
        padding: EdgeInsets.all(12),
        color: Colors.lightBlueAccent,
        child: Text('Log In', style: TextStyle(color: Colors.white)),
      ),
    );

    final forgotLabel = FlatButton(
      child: Text(
        'Lupa password?',
        style: TextStyle(color: Colors.black54),
      ),
      onPressed: () {},
    );

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.only(left: 24.0, right: 24.0),
          children: <Widget>[
            logo,
            SizedBox(height: 48.0),
            email,
            SizedBox(height: 8.0),
            password,
            SizedBox(height: 24.0),
            loginButton,
            forgotLabel
          ],
        ),
      ),
    );
}
}