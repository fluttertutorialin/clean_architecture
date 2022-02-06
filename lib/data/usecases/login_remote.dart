import '../datasource/datasource.dart';
import '../../domain/entity/entity.dart';
import '../../domain/usecases/usecases.dart';

class LoginRemote implements LoginGet {
  final RemoteDataSource _remoteDataSource;
  final SessionDataSource _sessionDataSource;

  LoginRemote(this._remoteDataSource, this._sessionDataSource);

  @override
  Future<LoginEntity> login({required LoginParameter parameter}) {
    return _remoteDataSource.login(parameter: LoginParameterConvert(userName: parameter.userName, password: parameter.password).toJson());
  }

  @override
  bool isLoginReadSession() => _sessionDataSource.isLoginRead();

  @override
  void isLoginWriteSession(bool value) =>
      _sessionDataSource.isLoginWrite(value);

  @override
  String userNameReadSession() => _sessionDataSource.userNameRead();

  @override
  void userNameWriteSession(String value) =>
      _sessionDataSource.userNameWrite(value);

  @override
  void loginInTimeWriteSession(String value)  => _sessionDataSource.loginInTimeWrite(value);
}

class LoginParameterConvert {
  final String? userName, password;

  LoginParameterConvert({required this.userName, required this.password});

  factory LoginParameterConvert.fromJson(LoginParameter params) =>
      LoginParameterConvert(userName: params.userName, password: params.password);

  //final bodyParameter = LoginParameter.fromJson(params).toJson(); //GET JSON PARAMETER
  Map<String, dynamic> toJson() => {'username': userName, 'password': password};
}
