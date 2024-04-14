import 'dart:io';

import 'package:flutter_dotenv/flutter_dotenv.dart';

class GlobalConfig {
  static String get apiUrl {
    switch (const String.fromEnvironment('FLAVOR')) {
      case 'develop':
        return 'http://192.168.1.39:8000/api/';
      case 'production':
        return 'http://path/';
      default:
        return '';
    }
  }

  static String get email => 'kaito.kitaya.personal@gmail.com';

  static String? get admobUnitId {
    switch (const String.fromEnvironment('FLAVOR')) {
      case 'develop':
        return Platform.isAndroid ? dotenv.env['ADMOB_DEV_UNIT_ID_ANDROID'] : dotenv.env['ADMOB_DEV_UNIT_ID_IOS'] ;
      case 'production':
        return Platform.isAndroid ? dotenv.env['ADMOB_PRD_UNIT_ID_ANDROID'] : dotenv.env['ADMOB_PRD_UNIT_ID_IOS'] ;
    }
    return null;
  }

}
