import 'package:dio_helper_flutter/dio_helper.dart';
import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final DioErrorEntity dioErrorEntity;

  const Failure({required this.dioErrorEntity});

  @override
  List<Object> get props => [dioErrorEntity];
}
