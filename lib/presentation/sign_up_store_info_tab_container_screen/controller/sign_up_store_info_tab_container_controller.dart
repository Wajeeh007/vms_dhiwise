import 'package:vms/core/app_export.dart';import 'package:vms/presentation/sign_up_store_info_tab_container_screen/models/sign_up_store_info_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the SignUpStoreInfoTabContainerScreen.
///
/// This class manages the state of the SignUpStoreInfoTabContainerScreen, including the
/// current signUpStoreInfoTabContainerModelObj
class SignUpStoreInfoTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController nameController = TextEditingController();

Rx<SignUpStoreInfoTabContainerModel> signUpStoreInfoTabContainerModelObj = SignUpStoreInfoTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

@override void onClose() { super.onClose(); nameController.dispose(); } 
 }
