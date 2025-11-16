class ApiConfig {
  static const String SERVER_URL = 'https://api.escuelajs.co/';
  static const String API_VERSION = 'api/v1/';

  static const String BASE_URL = '$SERVER_URL$API_VERSION';

  static const Duration CONNECTION_TIME_OUT = Duration(seconds: 10);
}
