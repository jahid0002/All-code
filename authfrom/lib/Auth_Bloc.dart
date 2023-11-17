import 'package:authfrom/Auth_Event.dart';
import 'package:authfrom/Auth_State.dart';
import 'package:email_validator/email_validator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc() : super(SignInInitialState()) {
    on<TextSignInEvent>((event, emit) {
      if (
          EmailValidator.validate(event.emailValue) == false) {
        emit(SignInErrorState('Plase Enter a valid email address'));
      } else if (event.passValue.length < 7) {
        emit(SignInErrorState('Plase Enter a valid password'));
      } else {
        emit(SignInValidState());
      }
    });

    on<SubmitedSignInEvent>((event, emit) {
      emit(SignInLodingState());
    });
  }
}
