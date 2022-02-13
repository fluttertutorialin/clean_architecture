import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final int? code;
  final String? message;
  final String? title;

  const Failure({this.code, this.message, this.title});

  @override
  List<Object> get props => [code!,  message!, title!];
}


