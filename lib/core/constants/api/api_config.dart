class ApiConfig {
  static const String _SERVER_URL = 'https://api.escuelajs.co/';
  static const String _API_VERSION = 'api/v1/';

  static const String BASE_URL = '$_SERVER_URL$_API_VERSION';

  static const Duration CONNECTION_TIME_OUT = Duration(seconds: 10);
  static const Duration RECEIVE_TIME_OUT = Duration(seconds: 10);
  static const Duration SEND_TIME_OUT = Duration(seconds: 10);
}
