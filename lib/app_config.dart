import 'package:flutter_dotenv/flutter_dotenv.dart';

enum Flavor { dev, staging, prod }

class AppConfig {
  static String get flavor => _require('FLAVOR');
  static String get name => _require('APP_NAME');
  static String get apiUrl => _require('API_URL');
  static bool get isDebug => flavor == 'dev' || flavor == 'staging';

  static String _require(String key) {
    final value = dotenv.env[key];
    if (value == null) {
      throw Exception('Required environment variable $key is not set.');
    }
    return value;
  }

  static String envFileForFlavor(String flavor) {
    switch (flavor) {
      case 'dev':
        return '.env.dev';
      case 'staging':
        return '.env.staging';
      case 'prod':
      default:
        return '.env.prod';
    }
  }
}