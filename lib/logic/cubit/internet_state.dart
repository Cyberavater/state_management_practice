part of 'internet_cubit.dart';

class InternetState extends Equatable {

  final ConnectionStatus connectionStatus;
  InternetState({required this.connectionStatus});

  @override
  List<Object> get props => [];
}

// class InternetLoading extends InternetState{
//   InternetLoading() : super();
//
// }

// class InternetState extends InternetStateLoading {
//   final ConnectivityResult connectivityResult;
//
//   InternetState({required this.connectivityResult});
//
// }
