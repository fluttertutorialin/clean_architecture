import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'usecase.dart';
import '../../core/error/error.dart';
import '../datasource/datasource.dart';
import '../../domain/entity/entity.dart';

class LoginParameter extends Equatable {
  final String? userName, password;

  const LoginParameter({required this.userName, required this.password});

  @override
  List<Object> get props => [userName!, password!];

  //final bodyParameter = LoginParameter.fromJson(params).toJson(); //GET JSON PARAMETER
  Map<String, dynamic> toJson() => {'username': userName, 'password': password};
}

class LoginRemote extends UseCase<LoginEntity, LoginParameter> {
  final RemoteDataSource _remoteDataSource;
  final SessionDataSource _sessionDataSource;

  LoginRemote(this._remoteDataSource, this._sessionDataSource);

  @override
  Future<Either<Failure, LoginEntity>> call(
    LoginParameter parameter,
  ) async {
    return await _remoteDataSource.login(parameter: parameter.toJson());
  }

  bool isLoginReadSession() => _sessionDataSource.isLoginRead();

  void isLoginWriteSession(bool value) =>
      _sessionDataSource.isLoginWrite(value);

  String userNameReadSession() => _sessionDataSource.userNameRead();

  void userNameWriteSession(String value) =>
      _sessionDataSource.userNameWrite(value);

  void loginInTimeWriteSession(String value) =>
      _sessionDataSource.loginInTimeWrite(value);
}
