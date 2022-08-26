// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import '../class/exception_class.dart';
// import '../utils/error_helper.dart';

// class StateClass extends GetxController {
//   Rx<bool> isLoading = false.obs;
//   Rx<bool> isWeakLoading = false.obs;

//   doFutureAndTryCatchWithView(
//       BuildContext context, Future<void> Function() function) async {
//     try {
//       await function();
//     } catch (error) {
//       if (error.runtimeType == ExceptionClass) {
//         print((error as ExceptionClass).message);
//       }
//       ErrorHelper.handleErrorWithView(context, error);
//     }
//   }

//   resetVariables() {}
// }
