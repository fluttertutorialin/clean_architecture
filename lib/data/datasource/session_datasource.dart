import '../../core/constant/constant.dart';
import '../repository/repository.dart';

abstract class SessionDataSource {
  //USERNAME
  String userNameRead();
  Future<void> userNameWrite(String value);
  Future<void> userNameRemove();

  //LOGIN IN TIME
  String loginInTimeRead();
  Future<void> loginInTimeWrite(String value);
  Future<void> loginInTimeRemove();

  //USER IS LOGIN
  bool isLoginRead();
  Future<void> isLoginWrite(bool value);
  Future<void> isLoginRemove();
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
  Future<void> isLoginRemove() =>
      _getStorageImpl.remove(userNameSession);

  @override
  bool isLoginRead() => _getStorageImpl.hasData(isLoginSession);

  @override
  Future<void> isLoginWrite(bool value) =>
      _getStorageImpl.write(isLoginSession, value);

  @override
  Future<void> loginInTimeRemove() => _getStorageImpl.remove(isLoginSession);

  @override
  String loginInTimeRead() => _getStorageImpl.read(loginDateTimeSession);

  @override
  Future<void> loginInTimeWrite(String value) =>
      _getStorageImpl.write(loginDateTimeSession, value);

  @override
  Future<void> userNameRemove() => _getStorageImpl.remove(loginDateTimeSession);
}
