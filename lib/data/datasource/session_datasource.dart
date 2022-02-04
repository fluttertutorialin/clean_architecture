import '../../core/constant/constant.dart';
import '../repository/repository.dart';

abstract class SessionDataSource {
  //USERNAME
  String userNameRead();
  Future<void> userNameWrite(String value);

  //USER IS LOGIN
  bool isLoginRead();
  Future<void> isLoginWrite(bool value);
}

class SessionDataSourceImpl extends SessionDataSource {
  final GetStorageImpl _getStorageImpl;

  SessionDataSourceImpl(this._getStorageImpl);

  @override
  String userNameRead() => _getStorageImpl.read(userNameSession);

  @override
  Future<void> userNameWrite(String value) =>
      _getStorageImpl.write(userNameSession, value);

  @override
  bool isLoginRead() => _getStorageImpl.hasData(isLoginSession);

  @override
  Future<void> isLoginWrite(bool value) =>
      _getStorageImpl.write(isLoginSession, value);
}
