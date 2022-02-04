import '../../core/constant/constant.dart';
import '../../domain/entity/login_entity.dart';

class LoginModel extends LoginEntity {
  const LoginModel(
      {required this.messageFromApi,
      required this.statusCodeFromApi,
      required this.loginDetailListFromApi})
      : super(
            statusCode: statusCodeFromApi,
            message: messageFromApi,
            loginDetailList: loginDetailListFromApi);

  final String? messageFromApi;
  final String? statusCodeFromApi;
  final List<LoginDetailModel?>? loginDetailListFromApi;

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
      messageFromApi: json[messageJsonKey],
      statusCodeFromApi: json[statusCodeJsonKey],
      loginDetailListFromApi: List<LoginDetailModel>.from(
          json[dataJsonKey].map((x) => LoginDetailModel.fromJson(x))));
}

class LoginDetailModel extends LoginDetailEntity {
  final String? userNameFromApi, userIdFromApi, employeeIdFromApi;

  const LoginDetailModel(
      {this.userIdFromApi, this.userNameFromApi, this.employeeIdFromApi})
      : super(
            userName: userNameFromApi,
            userId: userIdFromApi,
            employeeId: employeeIdFromApi);

  factory LoginDetailModel.fromJson(Map<String, dynamic> json) =>
      LoginDetailModel(
          userIdFromApi: json[userIdJsonKey],
          userNameFromApi: json[userNameJsonKey],
          employeeIdFromApi: json[employeeIdJsonKey]);
}
