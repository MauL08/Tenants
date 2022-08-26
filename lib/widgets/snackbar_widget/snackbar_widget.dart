import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackbarWidget {
  static getSnackbar(String title, String message) {
    Get.snackbar(
      title,
      message,
      backgroundColor: Colors.grey.shade100,
      borderWidth: 1,
      borderColor: Colors.grey,
    );
  }
}
