// ignore_for_file: prefer_final_fields

import 'dart:async';

import 'package:bloc_date/Bloc/Internet_Event.dart';
import 'package:bloc_date/Bloc/Internet_State.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState> {
  StreamSubscription? _streamSubscription;
  Connectivity _connectivity = Connectivity();
  InternetBloc() : super(InternetInitialState()) {
    
    on<InternetComeEvent>((event, emit) => emit(InternetComeState()));
    on<InternetLostEvent>((event, emit) => emit(InternetLostState()));

    _streamSubscription = _connectivity.onConnectivityChanged.listen((event) {
      if (event == ConnectivityResult.mobile ||
          event == ConnectivityResult.wifi) {
        add(InternetComeEvent());
      } else {
        add(InternetLostEvent());
      }
    });
  }
  @override
  Future<void> close() {
    _streamSubscription?.cancel();
    return super.close();
  }
}
