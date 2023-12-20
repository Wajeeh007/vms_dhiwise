import 'package:vms/core/app_export.dart';import 'package:vms/presentation/bottom_menu_screen/models/bottom_menu_model.dart';import 'package:flutter/material.dart';/// A controller class for the BottomMenuScreen.
///
/// This class manages the state of the BottomMenuScreen, including the
/// current bottomMenuModelObj
class BottomMenuController extends GetxController {TextEditingController nameController = TextEditingController();

TextEditingController addAValueController = TextEditingController();

Rx<BottomMenuModel> bottomMenuModelObj = BottomMenuModel().obs;

@override void onClose() { super.onClose(); nameController.dispose(); addAValueController.dispose(); } 
 }
