import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter_application_1/constants/enums.dart';


part 'internet_state.dart';


class InternetCubit extends Cubit<InternetState> {

  StreamSubscription? subscription;

  monitorInternetConnection() {
    return subscription = Connectivity().onConnectivityChanged.listen((ConnectivityResult connectivityResult) {
      // Got a new connectivity status!
      // connectivityResult = result;
      var result;
      if (connectivityResult == ConnectivityResult.mobile){
        result = ConnectionStatus.mobile;
      }else if (connectivityResult == ConnectivityResult.wifi){
        result = ConnectionStatus.wifi;
      }else if (connectivityResult == ConnectivityResult.none){
        result = ConnectionStatus.none;
      }
      _update(result);
    });
  }

  InternetCubit() : super(InternetState(connectionStatus: ConnectionStatus.none)){
    monitorInternetConnection();
  }

  _update(result) {
    emit(InternetState(connectionStatus: result));
  }

  @override
  Future<void> close() {
    subscription!.cancel();
    return super.close();
  }
}
