import 'package:dartz/dartz.dart';
import 'package:dio_helper_flutter/dio_helper.dart';
import '../../core/constant/constant.dart';
import '../../core/error/error.dart';
import '../model/model.dart';
import '../repository/repository.dart';

abstract class RemoteDataSource {
  Future<Either<Failure, LoginModel>> login({required Map<String, dynamic> parameter});
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final ApiProviderImpl _apiProviderImpl;

  RemoteDataSourceImpl(this._apiProviderImpl);

  Future<LoginModel> _loginApi({required Map<String, dynamic> parameter}) async =>
      LoginModel.fromJson(await _apiProviderImpl.postApi(loginUrl, queryParameters: parameter, header: headers));

  @override
  Future<Either<Failure, LoginModel>> login({required Map<String, dynamic> parameter}) async {
    try {
      final response = await _loginApi(parameter: parameter);
      return Right(response);
    } catch (error) {
      var getError = error as DioErrorEntity;
      return Left(Failure(
          code: getError.statusCode!,
          message: getError.errorLanguageEntity?.defaultLanguage!));
    }
  }
}
