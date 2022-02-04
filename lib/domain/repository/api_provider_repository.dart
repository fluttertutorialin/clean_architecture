/*
Use: CREATE API API PROVIDER REPOSITORY USE FOR CALLING CALLING API
Get (getApi), Post (postApi) and Image upload formData (imageUpload)
*/

import 'package:dio/dio.dart' as dio;

abstract class ApiProviderRepository {
  //GET API
  Future getApi(String pathUrl, {Map<String, dynamic>? queryParameters});

  //POST API
  Future postApi(String pathUrl,
      {Map<String, dynamic>? queryParameters, dynamic data});

  //IMAGE UPLOAD POST
  Future imageUpload(String pathUrl, {required dio.FormData formData});
}
