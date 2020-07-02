part of 'pages.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FirebaseUser firebaseUser = Provider.of<FirebaseUser>(context);

    if (firebaseUser == null) {
      if (!(prevPageEvent is GoToLoginPage)) {
        prevPageEvent = GoToLoginPage();
        context.bloc<PagesBloc>().add(prevPageEvent);
      }
    } else {
      if(!(prevPageEvent is GoToMainPage))
      {
        context.bloc<UserBloc>().add(LoadUser(firebaseUser.uid));
        context.bloc<SuplierBloc>().add(GetSuplier());

        prevPageEvent = GoToMainPage();
        context.bloc<PagesBloc>().add(prevPageEvent);}
    }

    return BlocBuilder<PagesBloc, PagesState>(
        builder: (_, pageState) => 
             (pageState is OnLoginPage) ? SignInPage() 
             :(pageState is OnAddSuplierPage) ? AddSuplier(pageState.suplier) 
             :(pageState is OnEditProfilPage) ? EditProfil(pageState.user)
             :(pageState is OnAkunPage) ? AkunPage()
             :(pageState is OnMainPage) ? MainPage() : Container());
  }
}
