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
}
