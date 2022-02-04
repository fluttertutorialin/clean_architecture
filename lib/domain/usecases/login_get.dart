import '../entity/entity.dart';

abstract class LoginGet {
  //API
  Future<LoginEntity> login({required LoginParameter parameter});

  //SESSION
  String userNameReadSession();
  void userNameWriteSession(String value);
  bool isLoginReadSession();
  void isLoginWriteSession(bool value);
}

class LoginParameter {
  final String? userName, password;

  LoginParameter({required this.userName, required this.password});
}
