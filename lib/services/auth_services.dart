part of 'services.dart';


class AuthServices{
  static FirebaseAuth _auth = FirebaseAuth.instance;

  static Future<SignInSignUpResult> signIn(
      String email, String password) async {
    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(
          email: email, password: password);

      User user = await result.user.fromFireStore();//mengambil data pada firestore yang nntinya diconvert dalam bentuk keluaran User

      return SignInSignUpResult(user: user);
    } catch (e) {
      return SignInSignUpResult(message: e.toString().split(',')[1]);
    }
  }

  static Future<void> signOut()async{
    await _auth.signOut();
  }

static Stream<FirebaseUser> get userStream => _auth.onAuthStateChanged; //memberitahukan kalau ada perubahan status pada firebase authentication(status sign in/sign out)

}

class SignInSignUpResult {
  final User user; // krena dari class User objek user punya overriding pada method toString() -> overriding brrti merubah method pada class tertentu
  final String message;

  SignInSignUpResult({this.user,this.message});
}