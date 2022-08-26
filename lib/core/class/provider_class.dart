// import 'dart:convert';
// import 'dart:developer';

// import 'package:dio/dio.dart' as dio;
// import 'package:get/get.dart';
// import '../class/exception_class.dart';
// import '../config/cache_config.dart';
// import '../config/network_request_config.dart';
// import '../utils/error_helper.dart';
// import '../../data/base_data/base_data_model/base_model.dart';

// // Class ini adalah super class dari semua provider pada project ini.
// // Class berisi fungsi fungsi utama dari sebuah provider.
// // Seperti save dan get cache, network request dan lainnya.
// // Sehingga semua class turunan dari super class ini juga bisa melakukan hal yang sama.
// class ProviderClass extends GetxController {
//   CacheConfig cacheConfig = CacheConfig();
//   NetworkRequestConfig networkRequestConfig = NetworkRequestConfig();
//   NetworkRequestConfig networkRequestConfigMultipart =
//       NetworkRequestConfig(isMultipart: true);

//   saveCache(String key, Map<String, dynamic> value) {
//     try {
//       cacheConfig.saveCache(key: key, value: value);
//     } catch (e) {
//       throw ExceptionClass(ExceptionClass.cache,
//           message: "error when trying to save cache");
//     }
//   }

//   Map<String, dynamic>? getCache(String key) {
//     try {
//       return cacheConfig.getCache(key);
//     } catch (e) {
//       throw ExceptionClass(ExceptionClass.cache,
//           message: "error when trying to get cache");
//     }
//   }

//   BaseModel? getCacheInBaseForm(String key) {
//     try {
//       Map<String, dynamic>? cacheMap = getCache(key);
//       print(
//           "tipe  ${getCache(key).runtimeType}, dan tipe ${cacheMap.runtimeType}");
//       if (cacheMap != null) {
//         // Do Encode and Decode for avoid dart unknow error internalhasmap
//         var encode = jsonEncode(cacheMap);
//         var cache = BaseModel.fromJson(jsonDecode(encode));
//         return cache;
//       }
//       return null;
//     } catch (e) {}
//   }

//   deleteCache(String key) {
//     try {
//       cacheConfig.deleteCache(key);
//     } catch (e) {
//       throw ExceptionClass(ExceptionClass.cache,
//           message: "error when trying to delete cache");
//     }
//   }

//   Future<BaseModel> doNetworkAndCachePost(String endpoint,
//       {required Function(BaseModel baseCache) cacheCallback,
//       Map<String, dynamic> data = const {}}) async {
//     //1st : Get data from cache

//     var cache = getCacheInBaseForm(endpoint);

//     if (cache != null) {
//       cacheCallback(cache);
//     }

//     //2nd : Get data from network
//     Map<String, dynamic> value =
//         await networkRequestConfig.doPost(endpoint, data: data);

//     BaseModel baseData = BaseModel.fromJson(value);
//     ErrorHelper.checkErrorFromNetworkCode(baseData.code, baseData.info);
//     print(value);

//     //3rd : Save data to cache
//     saveCache(endpoint, baseData.toJson());

//     //4th : Return data
//     return baseData;
//   }

//   doNetworkPostMultipart(String endpoint, {required dio.FormData data}) async {
//     Map<String, dynamic> value = await networkRequestConfigMultipart
//         .doPostMultipart(endpoint, data: data);
//     BaseModel baseData = BaseModel.fromJson(value);
//     ErrorHelper.checkErrorFromNetworkCode(baseData.code, baseData.info);
//     return baseData;
//   }

//   Future<BaseModel> doNetworkGet(String endpoint,
//       {required Function(BaseModel baseCache) cacheCallback,
//       Map<String, dynamic> queryparams = const {}}) async {
//     //1st : Get data from cache
//     try {
//       var cache = getCacheInBaseForm(endpoint);
//       if (cache != null) cacheCallback(cache);
//     } catch (e) {}

//     //2nd : Get Data from Network
//     Map<String, dynamic> value =
//         await networkRequestConfig.doGet(endpoint, queryparams: queryparams);
//     BaseModel baseData = BaseModel.fromJson(value);
//     ErrorHelper.checkErrorFromNetworkCode(baseData.code, baseData.info);

//     //3rd : Save data to cache
//     saveCache(endpoint, baseData.toJson());

//     //4th : Return data
//     return baseData;
//   }

//   Future<BaseModel> doNetworkPut(String endpoint,
//       {Map<String, dynamic> data = const {}}) async {
//     // Put data to network and get the result
//     Map<String, dynamic> value =
//         await networkRequestConfig.doPut(endpoint, data: data);
//     BaseModel baseData = BaseModel.fromJson(value);
//     ErrorHelper.checkErrorFromNetworkCode(baseData.code, baseData.info);
//     return baseData;
//   }

//   Future<BaseModel> doNetworkPatch(String endpoint,
//       {Map<String, dynamic> data = const {}}) async {
//     // Put data to network and get the result
//     Map<String, dynamic> value =
//         await networkRequestConfig.doPatch(endpoint, data: data);
//     BaseModel baseData = BaseModel.fromJson(value);
//     ErrorHelper.checkErrorFromNetworkCode(baseData.code, baseData.info);
//     return baseData;
//   }

//   Future doNetworkDelete(String endpoint) async {
//     await networkRequestConfig.doDelete(endpoint);
//   }
// }
