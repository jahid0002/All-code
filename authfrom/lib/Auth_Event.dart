abstract class SignInEvent {}

class TextSignInEvent extends SignInEvent {
  String emailValue;
  String passValue;

  TextSignInEvent(this.emailValue, this.passValue);
}

class SubmitedSignInEvent extends SignInEvent {
  String email;
  String pass;

  SubmitedSignInEvent(this.email, this.pass);
}
