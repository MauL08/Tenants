import 'package:dio/dio.dart';
import '../config/cache_config.dart';

class NetworkRequestConfig {
  //Base url
  static const String _baseUrl = "https://temans2.amanahapp.run/api/v1/branch";
  // "http://localhost:8000/api/v1/branch";
  Dio dio = Dio(BaseOptions(baseUrl: _baseUrl));
  CacheConfig cacheConfig = CacheConfig();

  NetworkRequestConfig({bool isMultipart = false}) {
    dio.options.headers = {
      "Content-Type": isMultipart ? "multipart/form-data" : "application/json",
      "Accept": "application/json",
      "authorization":
          "bearer ${(cacheConfig.getCache("access_token") != null) ? (cacheConfig.getCache("access_token") as Map<String, dynamic>)['token'] : ""}"
    };
  }

  Future<Map<String, dynamic>> doPost(String endpoint,
      {Map<String, dynamic> data = const {}}) async {
    var response = await dio.post(endpoint, data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> doPostMultipart(String endpoint,
      {required FormData data}) async {
    var response = await dio.post(endpoint, data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> doGet(String endpoint,
      {Map<String, dynamic> queryparams = const {}}) async {
    // print(dio.options.headers["authorization"]);
    var response = await dio.get(endpoint, queryParameters: queryparams);
    return response.data;
  }

  Future<Map<String, dynamic>> doPut(String endpoint,
      {Map<String, dynamic> data = const {}}) async {
    var response = await dio.put(endpoint, data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> doPatch(String endpoint,
      {Map<String, dynamic> data = const {}}) async {
    // print(data);
    var response = await dio.patch(endpoint, data: data);
    return response.data;
  }

  Future<Map<String, dynamic>> doDelete(String endpoint) async {
    var response = await dio.delete(endpoint);
    return response.data;
  }

  doUpload() {}
}
