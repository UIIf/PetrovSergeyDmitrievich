// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "app_name": "Instagram",
  "public_name": "public name",
  "citate_1": "Text 1",
  "citate_2": "Text 2",
  "citate_3": "Text 3",
  "citate_4": "Text 4",
  "citate_5": "Text 5",
  "default_citate": "default citate"
};
static const Map<String,dynamic> ru = {
  "app_name": "Мнгновенофото",
  "public_name": "Живопись русских комуналок",
  "citate_1": "Если волк молчит, то лучше его не перебивать",
  "citate_2": "Если тебя обсуждают за спиной, значит ты впереди",
  "citate_3": "Волк слабее льва и тигра но в цырке не выступает",
  "citate_4": "Ты живешь как карта ляжет, я жвиу как мама скажет",
  "citate_5": "Работа не волк, работа ворк",
  "default_citate": "Обычная волчья цитата"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
