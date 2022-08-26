// import 'dart:developer';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:temans_branch_mobile/data/auth_data/auth_data_provider/login_provider.dart';
// import 'package:temans_branch_mobile/pages/splash_pages/splash_page.dart';
// import '../../widgets/snackbar_widget/snackbar_widget.dart';
// import '../class/exception_class.dart';
// import '../../pages/unauthorize_page/unauthorize_page.dart';

// class ErrorHelper {
//   static handleErrorWithView(
//     BuildContext context,
//     dynamic error,
//   ) {
//     print(error.toString());
//     switch (error.runtimeType) {
//       case ExceptionClass:
//         String cause = (error as ExceptionClass).cause;
//         if (cause == ExceptionClass.cache) {
//         } else if (cause == ExceptionClass.network) {
//         } else if (cause == ExceptionClass.networkMin1) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin2) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin3) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin4) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin5) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin6) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin7) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin8) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin9) {
//           SnackbarWidget.getSnackbar(
//               "Failed", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin10) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.networkMin11) {
//           SnackbarWidget.getSnackbar(
//               "Error", error.message ?? "Gagal ketika menrequest ke-server");
//         } else if (cause == ExceptionClass.input) {
//           SnackbarWidget.getSnackbar(
//               "Input Error", error.message ?? "Error pada input user");
//         } else {
//           SnackbarWidget.getSnackbar("Error", error.message ?? "Sesuatu Error");
//         }
//         return;
//       case DioError:
//         var dioError = error as DioError;
//         if (dioError.response != null && dioError.response!.statusCode == 401) {
//           LoginProvider.removeUserLogin();
//           Get.offAll(SplashPage());
//           return;
//         }
//         if (dioError.response != null && dioError.response!.statusCode == 413) {
//           SnackbarWidget.getSnackbar(
//               "Upload Terlalu Besar", "Image yang diupload terlalu besar!");
//           return;
//         }
//         if (error.response != null) {
//           if (error.response!.data != null) {
//             if (error.response!.data['info'] != null) {
//               SnackbarWidget.getSnackbar("Error", error.response!.data['info']);
//               return;
//             }
//           }
//         }
//         if (dioError.type == DioErrorType.other) {
//           SnackbarWidget.getSnackbar("Error",
//               "Nampaknya ada yang salah, cek koneksi internet dan coba kembali");
//           return;
//         }
//         SnackbarWidget.getSnackbar("Error", dioError.toString());
//         return;
//       case NoSuchMethodError:
//         SnackbarWidget.getSnackbar("Error", "Unknow code, parsing error");
//         return;
//       default:
//         SnackbarWidget.getSnackbar(
//             "Error", "Sesuatu Error ${error.runtimeType}");
//         return;
//     }
//   }

//   static checkErrorFromNetworkCode(int? code, String? message) {
//     switch (code) {
//       case 401:
//         throw ExceptionClass(ExceptionClass.network401, message: message);
//       case 403:
//         throw ExceptionClass(ExceptionClass.network403, message: message);
//       default:
//     }
//   }
// }
