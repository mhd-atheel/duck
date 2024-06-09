import 'package:flutter/material.dart';
import 'package:toastification/toastification.dart';
class Utils {

  static void customSnackBar(BuildContext context,String message , ToastificationType type){
    toastification.show(
      context: context, // optional if you use ToastificationWrapper
      title: Text(message),
      autoCloseDuration: const Duration(seconds: 5),
      type: type,
      style: ToastificationStyle.flat,
      showProgressBar: false,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
    );
  }
}