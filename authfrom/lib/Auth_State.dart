abstract class SignInState {}

class SignInInitialState extends SignInState {}



class SignInErrorState extends SignInState {
  final String errorMassege;
  SignInErrorState(this.errorMassege);
}


class SignInValidState extends SignInState {}
class SignInLodingState extends SignInState{}



