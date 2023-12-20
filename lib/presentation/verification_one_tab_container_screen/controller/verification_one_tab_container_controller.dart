import 'package:vms/core/app_export.dart';import 'package:vms/presentation/verification_one_tab_container_screen/models/verification_one_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the VerificationOneTabContainerScreen.
///
/// This class manages the state of the VerificationOneTabContainerScreen, including the
/// current verificationOneTabContainerModelObj
class VerificationOneTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {Rx<VerificationOneTabContainerModel> verificationOneTabContainerModelObj = VerificationOneTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 3));

 }
