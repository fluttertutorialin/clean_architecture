import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  const LoginEntity({
    required this.message,
    required this.statusCode,
    required this.loginDetailList,
  });

  final String? message;
  final String? statusCode;
  final List<LoginDetailEntity?>? loginDetailList;

  @override
  List<Object?> get props => [message, statusCode, loginDetailList];
}

class LoginDetailEntity extends Equatable {
  final String? userId;
  final String? userName;
  final String? employeeId;

  const LoginDetailEntity({this.userId, this.userName, this.employeeId});

  @override
  List<Object> get props => [userId!, userName!, employeeId!];
}
