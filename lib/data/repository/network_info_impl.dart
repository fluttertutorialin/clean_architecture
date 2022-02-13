import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:vendor/domain/repository/repository.dart';

class NetWorkInfoImpl implements NetWokInfoRepository {
  ConnectivityResult? _connectivityResult;

  Future _connect() async {
    _connectivityResult = await Connectivity().checkConnectivity();
  }

  @override
  Future<bool> get isConnected async {
    await _connect();

    if (_connectivityResult == ConnectivityResult.mobile) {
      return true;
    }
    if (_connectivityResult == ConnectivityResult.wifi) {
      return true;
    }
    return false;
  }

  /*@override
  Future<Either<String, Unit>> isOnline() async {
    try {
      final check = await isConnected;
      if (check) {
        return const Right(unit);
      }
      return const Left(networkConnectionError);
    } on Failure catch (e) {
      return const Left(networkConnectionError);
    } catch (e) {
      return const Left(networkConnectionError);
    }
  }*/
}
