import 'package:dio/dio.dart';
import 'package:learn_bloc_clean_arch/core/constants/api/api_config.dart';

class ApiService {
  static final ApiService _instance = ApiService._internal();
  factory ApiService() {
    return _instance;
  }

  late Dio _dio;

  ApiService._internal() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.BASE_URL,
        connectTimeout: ApiConfig.CONNECTION_TIME_OUT,
        receiveTimeout: ApiConfig.RECEIVE_TIME_OUT,
        sendTimeout: ApiConfig.SEND_TIME_OUT,
        headers: {'Content-Type': 'application/json', 'Accept': '*/*'},
      ),
    );

    _addInterceptors();
  }

  void _addInterceptors() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) {},

        onResponse: (response, handler) {},

        onError: (error, handler) {},
      ),
    );
  }
}
