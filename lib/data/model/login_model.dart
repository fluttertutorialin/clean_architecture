import '../../domain/entity/entity.dart';
import '../../core/constant/constant.dart';

class LoginModel extends LoginEntity {
  final String? statusCode;
  final String? message;

  const LoginModel({
    required List<LoginDetailEntity?>? loginDetailList,
    this.message,
    this.statusCode,
  }) : super(loginDetailList: loginDetailList);

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
      loginDetailList: List<LoginDetailModel>.from(
          json[dataJsonKey].map((value) => LoginDetailModel.fromJson(value))),
      message: json[messageJsonKey],
      statusCode: json[statusCodeJsonKey]);
}

class LoginDetailModel extends LoginDetailEntity {
  const LoginDetailModel({required String? userId, userName, employeeId})
      : super(userId: userId, userName: userName, employeeId: employeeId);

  factory LoginDetailModel.fromJson(Map<String, dynamic> json) =>
      LoginDetailModel(
          userId: json[userIdJsonKey],
          userName: json[userNameJsonKey],
          employeeId: json[employeeIdJsonKey]);
}
