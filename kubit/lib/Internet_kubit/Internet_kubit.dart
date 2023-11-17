import 'dart:async';

import 'package:connectivity/connectivity.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kubit/Internet_kubit/Internet_state.dart';

class InternetCubit extends Cubit<InternetState> {
  Connectivity _connectivity = Connectivity();
  StreamSubscription? _streamSubscription;

  InternetCubit() : super(InternetInitialState()) {
    _streamSubscription = _connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile ||
          result == ConnectivityResult.wifi) {
        return emit(InternetComeState());
      } else {
        return emit(InternetLostState());
      }
    });
  }
}
