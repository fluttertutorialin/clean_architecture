import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '../../core/constant/global_data.dart';

class SettingsController extends GetxController {
  final GetStorage _getStorage = GetStorage();

  //Rx variables
  RxInt currentTheme = 2.obs;
  RxString language = 'en'.obs;

  //keys variables
  final String themeKey = 'theme';
  final String languageKey = 'language';

  //constrictor
  SettingsController() {
    currentTheme.value = _getStorage.read(themeKey) ?? 2;
    language.value = _getStorage.read(languageKey) ?? 'ar';
  }

  //theme mode functions
  ThemeMode getThemeMode() => themes[_getThemeValue()]['value'];

  int _getThemeValue() {
    return _getStorage.read(themeKey) ?? 2;
  }

  changeCurrentTheme(int value, ThemeMode themeMode) {
    Get.changeThemeMode(themeMode);
    currentTheme.value = value;
    _getStorage.write(themeKey, value);
  }

  //language functions
  Locale getLocale() => Locale(_getLanguageValue());

  String _getLanguageValue() {
    return _getStorage.read(languageKey) ?? 'en';
  }

  changeLanguage(String value) {
    language.value = value;
    Get.updateLocale(Locale(value));
    _getStorage.write(languageKey, value);
  }
}
