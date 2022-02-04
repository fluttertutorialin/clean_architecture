import '../../core/constant/constant.dart';
import '../model/model.dart';
import '../repository/repository.dart';

abstract class RemoteDataSource {
  Future<LoginModel> login({required Map<String, dynamic> parameter});
}

class RemoteDataSourceImpl extends RemoteDataSource {
  final ApiProviderImpl _apiProviderImpl;

  RemoteDataSourceImpl(this._apiProviderImpl);

  Future<LoginModel> _loginApi({required Map<String, dynamic> param}) =>
      _apiProviderImpl
          .postApi(loginUrl, queryParameters: param, header: headers)
          .then((value) => LoginModel.fromJson(value));

  @override
  Future<LoginModel> login({required Map<String, dynamic> parameter}) {
    return _loginApi(param: parameter);
  }
}
