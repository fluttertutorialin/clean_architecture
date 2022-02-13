import 'package:dartz/dartz.dart';
import 'package:dio_helper_flutter/dio_helper.dart';
import '../mapper/model.dart';
import '../../core/constant/constant.dart';
import '../../core/error/error.dart';
import '../repository/repository.dart';

abstract class RemoteDataSource {
  Future<Either<Failure, LoginMapper>> login(
      {required Map<String, dynamic> parameter});
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final ApiProviderImpl _apiProviderImpl;
  final NetWorkInfoImpl _networkInfoImpl;

  RemoteDataSourceImpl(this._apiProviderImpl, this._networkInfoImpl);

  Future<LoginMapper> _loginApi({required Map<String, dynamic> parameter}) async {
    var response = await _apiProviderImpl.postApi(loginUrl, queryParameters: parameter, header: defaultHeader);
    return LoginMapper.fromJson(response);
  }

  @override
  Future<Either<Failure, LoginMapper>> login(
      {required Map<String, dynamic> parameter}) async {
    if (await _networkInfoImpl.isConnected) {
      try {
        final response = await _loginApi(parameter: parameter);
        return Right(response);
      } catch (error) {
        var getError = error as DioErrorEntity;
        return Left(Failure(
            code: getError.statusCode!,
            title: loginTitleToast,
            message: getError.errorLanguageEntity?.defaultLanguage!));
      }
    } else {
      return const Left(
          Failure(title: loginTitleToast, message: networkConnectionError));
    }
  }
}
