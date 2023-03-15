import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class ConnectivityService {
  late final StreamSubscription<ConnectivityResult> subscription;

  Stream<bool> get onConnectivityChanged =>
      Connectivity().onConnectivityChanged.asyncMap((event) async => await InternetConnectionChecker().hasConnection);

  Future<bool> get hasConnection async => await InternetConnectionChecker().hasConnection;
}
