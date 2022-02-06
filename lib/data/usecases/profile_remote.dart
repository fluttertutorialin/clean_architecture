import '../datasource/datasource.dart';
import '../../domain/usecases/usecases.dart';

class ProfileRemote implements ProfileGet {
  final RemoteDataSource _remoteDataSource;
  final SessionDataSource _sessionDataSource;

  ProfileRemote(this._remoteDataSource, this._sessionDataSource);

  @override
  String userNameReadSession() => _sessionDataSource.userNameRead();

  @override
  String loginInTimeReadSession()  => _sessionDataSource.loginInTimeRead();

  @override
  void logout() {
    _sessionDataSource.isLoginRemove();
    _sessionDataSource.userNameRemove();
    _sessionDataSource.loginInTimeRemove();
  }
}
