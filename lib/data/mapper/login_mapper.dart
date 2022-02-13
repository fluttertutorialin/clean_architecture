import '../../domain/model/model.dart';
import '../../core/constant/constant.dart';

//LOGIN (CLASS - 1)
class LoginMapper extends LoginModel {
  final String? statusCode;
  final String? message;

  const LoginMapper({
    required List<LoginDetailModel?>? loginDetailList,
    this.message,
    this.statusCode,
  }) : super(loginDetailList: loginDetailList);

  factory LoginMapper.fromJson(Map<String, dynamic> json) => LoginMapper(
      loginDetailList: List<LoginDetailModel>.from(
          json[dataJsonKey].map((value) => LoginDetailMapper.fromJson(value))),
      message: json[messageJsonKey],
      statusCode: json[statusCodeJsonKey]);
}

//LOGIN DETAIL (CLASS - 2) GET THE USERID, USERNAME AND EMPLOYEE-ID
class LoginDetailMapper extends LoginDetailModel {
  const LoginDetailMapper({required String? userId, userName, employeeId})
      : super(userId: userId, userName: userName, employeeId: employeeId);

  factory LoginDetailMapper.fromJson(Map<String, dynamic> json) =>
      LoginDetailMapper(
          userId: json[userIdJsonKey],
          userName: json[userNameJsonKey],
          employeeId: json[employeeIdJsonKey]);
}

/*
final value = ListResponse<LoginDetailModel>.fromJson(response, (json) => LoginDetailModel.fromJson(json));
print(value.data.toString());

class BaseResponse {
  final String? statusCode;
  final String? message;

  BaseResponse({this.statusCode, this.message});

  factory BaseResponse.fromJson(Map<String, dynamic> json) {
    return BaseResponse(
        statusCode: json[messageJsonKey], message: json[statusCodeJsonKey]);
  }
}

class ListResponse<T> extends BaseResponse {
  List<T>? data;

  ListResponse({
    required String message,
    required String statusCode,
    this.data,
  }) : super(message: message, statusCode: statusCode);

  factory ListResponse.fromJson(
      Map<String, dynamic> json, Function(Map<String, dynamic>) create) {
    var data = <T>[];
    json[dataJsonKey].forEach((v) {
      data.add(create(v));
    });

    return ListResponse<T>(
        statusCode: json[messageJsonKey],
        message: json[statusCodeJsonKey],
        data: data);
  }
}
*/
