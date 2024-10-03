import 'dart:developer';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/enums/ui_enums.dart';

void toast(
  String title,
  String message, {
  ToastTypes type = ToastTypes.normal,
  Color? color = Colors.grey,
}) {
  if (type == ToastTypes.normal) {
    color = Colors.grey;
  }
  if (type == ToastTypes.success || title == 'Success') {
    color = Colors.greenAccent;
  }
  if (type == ToastTypes.error || title == 'Error') {
    color = Colors.redAccent;
  }
  if (type == ToastTypes.warning || title == 'Warning') {
    color = Colors.orangeAccent;
  }
  Get.snackbar(title, message,
      snackPosition: SnackPosition.TOP,
      backgroundColor: color,
      colorText: Colors.white);
}

outlog(
  Object data, {
  String? title = "",
}) {
  log("$title $data");
}
