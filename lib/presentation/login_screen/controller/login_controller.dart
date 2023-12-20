import 'package:vms/core/app_export.dart';import 'package:vms/presentation/login_screen/models/login_model.dart';import 'package:flutter/material.dart';/// A controller class for the LoginScreen.
///
/// This class manages the state of the LoginScreen, including the
/// current loginModelObj
class LoginController extends GetxController {TextEditingController phoneNumberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

Rx<LoginModel> loginModelObj = LoginModel().obs;

Rx<bool> isShowPassword = true.obs;

@override void onClose() { super.onClose(); phoneNumberController.dispose(); passwordController.dispose(); } 
 }
