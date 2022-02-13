import 'package:equatable/equatable.dart';

class LoginModel extends Equatable {
  final List<LoginDetailModel?>? loginDetailList;

  const LoginModel({
    required this.loginDetailList,
  });

  @override
  List<Object?> get props {
    return [loginDetailList];
  }

  @override
  bool get stringify => true;
}

class LoginDetailModel extends Equatable {
  final String? userId, userName, employeeId;

  const LoginDetailModel({this.userId, this.userName, this.employeeId});

  @override
  List<Object> get props => [userId!, userName!, employeeId!];

  @override
  bool get stringify => true;
}
