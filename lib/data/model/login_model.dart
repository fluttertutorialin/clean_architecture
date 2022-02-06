import '../../domain/entity/entity.dart';
import '../../core/constant/constant.dart';

class LoginModel extends LoginEntity {
  final String? statusCode;

  const LoginModel({
    required String message,
    required List<LoginDetailEntity?>? loginDetailList,
    this.statusCode,
  }) : super(message: message, loginDetailList: loginDetailList);

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json[messageJsonKey],
        loginDetailList: List<LoginDetailModel>.from(
            json[dataJsonKey].map((value) => LoginDetailModel.fromJson(value))),
        statusCode: json[statusCodeJsonKey],
      );
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
