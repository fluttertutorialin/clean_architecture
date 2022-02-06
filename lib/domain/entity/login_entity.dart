import 'package:equatable/equatable.dart';

class LoginEntity extends Equatable {
  final String? message;
  final List<LoginDetailEntity?>? loginDetailList;

  const LoginEntity({
    required this.message,
    required this.loginDetailList,
  });

  @override
  List<Object?> get props {
    return [
      message,
      loginDetailList
    ];
  }

  @override
  bool get stringify => true;
}

class LoginDetailEntity extends Equatable {
  final String? userId, userName, employeeId;

  const LoginDetailEntity({this.userId, this.userName, this.employeeId});

  @override
  List<Object> get props => [userId!, userName!, employeeId!];
}
