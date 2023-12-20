import 'package:vms/core/app_export.dart';import 'package:vms/presentation/verification_screen/models/verification_model.dart';import 'package:flutter/material.dart';/// A controller class for the VerificationScreen.
///
/// This class manages the state of the VerificationScreen, including the
/// current verificationModelObj
class VerificationController extends GetxController {TextEditingController newpasswordController = TextEditingController();

TextEditingController confirmpasswordController = TextEditingController();

Rx<VerificationModel> verificationModelObj = VerificationModel().obs;

Rx<bool> isShowPassword = true.obs;

Rx<bool> isShowPassword1 = true.obs;

@override void onClose() { super.onClose(); newpasswordController.dispose(); confirmpasswordController.dispose(); } 
 }
