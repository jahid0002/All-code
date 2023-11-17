// ignore: file_names
import 'dart:async';

import 'package:block/Block/internet_event.dart';
import 'package:block/Block/internet_state.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  // ignore: non_constant_identifier_names
  StreamSubscription? _StreamSubscription;
  Connectivity _connectivity = Connectivity();
  InternetBloc() : super(InatialState()) {
    on<InternetBackEvent>((event, emit) => emit(InternetBackState()));
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));

    _StreamSubscription = _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        add(InternetBackEvent());
      } else {
        add(InternetLostEvent());
      }
    });
  }

  @override
  Future<void> close() {
    _StreamSubscription?.cancel();
    return super.close();
  }
}
