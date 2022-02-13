import 'package:dio_helper_flutter/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'core/constant/url.dart';
import 'core/language/translation.dart';
import 'core/route/route_collection.dart';
import 'core/route/route_name.dart';
import 'core/theme/theme.dart';
import 'dependency_injection.dart';
import 'presentation/binding/global_binding.dart';
import 'presentation/controller/controller.dart';

void main() async {
  await Get.putAsync(() => GetStorage.init());
  DependencyInjection.init();

  SystemUiOverlayStyle systemUiOverlayStyle =
      const SystemUiOverlayStyle(statusBarColor: Colors.transparent);
  SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);

  APiKey.baseUrlKey = baseUrl;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        locale: SettingsController().getLocale(),
        themeMode: SettingsController().getThemeMode(),
        theme: lightTheme,
        darkTheme: darkTheme,
        translations: Translation(),
        fallbackLocale: const Locale('en'),
        initialBinding: GlobalBinding(),
        initialRoute: RouteName.slashRoute, //FIRST TIME WHICH LAUNCH SCREEN
        getPages: RouteCollection.routeCollection //COLLECTION OF ROUTES
        );
  }
}
