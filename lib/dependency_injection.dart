import 'package:dio/dio.dart';
import 'package:dio_helper_flutter/dio_helper.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'data/datasource/datasource.dart';
import 'data/repository/repository.dart';
import 'data/usecases/usecases.dart';
import 'domain/repository/repository.dart';
import 'domain/usecases/usecases.dart';

class DependencyInjection {
  static void init() {
    //INIT BINDING
    Get.lazyPut<GetStorage>(() => GetStorage(), fenix: true);
    Get.lazyPut<DioHelper>(() => DioHelper(Dio()), fenix: true);

    //SESSION BINDING
    Get.lazyPut<GetStorageRepository>(() => GetStorageImpl(Get.find()));
    Get.lazyPut<GetStorageImpl>(() => GetStorageImpl(Get.find()));
    Get.lazyPut<SessionDataSource>(() => SessionDataSourceImpl(Get.find()));

    //API BINDING
    Get.lazyPut<ApiProviderRepository>(() => ApiProviderImpl(Get.find()));
    Get.lazyPut<ApiProviderImpl>(() => ApiProviderImpl(Get.find()));
    Get.lazyPut<RemoteDataSource>(() => RemoteDataSourceImpl(Get.find()));

    //CONTROLLER PASS DATA BINDING
    Get.lazyPut<LoginGet>(() => LoginRemote(Get.find(), Get.find()));
    Get.lazyPut<SplashGet>(() => SplashRemote(Get.find()));
  }
}
