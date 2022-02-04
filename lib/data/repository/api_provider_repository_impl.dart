/*
Developer: Lakhani kamlesh
Create Date: 20-11-21 3:41
*/

import 'package:dio/dio.dart';
import 'package:dio_helper_flutter/dio_helper.dart';
import '../../domain/repository/repository.dart';

class ApiProviderImpl implements ApiProviderRepository {
  final DioHelper _dioHelper;

  ApiProviderImpl(this._dioHelper);

  @override
  Future getApi(String pathUrl, {Map<String, dynamic>? queryParameters}) async {
    return await _dioHelper.request('${APiKey.baseUrlKey}$pathUrl',
        queryParameter: queryParameters, dioMethod: DioMethod.get);
  }

  @override
  Future imageUpload(String pathUrl, {required FormData formData}) async {
    return await _dioHelper.request(pathUrl, data: formData);
  }

  @override
  Future postApi(String pathUrl,
      {Map<String, dynamic>? queryParameters,
      data,
      Map<String, dynamic>? header}) async {
    return await _dioHelper.request('${APiKey.baseUrlKey}$pathUrl',
        data: data,
        queryParameter: queryParameters,
        header: header,
        dioMethod: DioMethod.post);
  }
}
