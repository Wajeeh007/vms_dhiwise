import 'package:vms/core/app_export.dart';
import 'package:vms/presentation/set_variants_screen/models/set_variants_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SetVariantsScreen.
///
/// This class manages the state of the SetVariantsScreen, including the
/// current setVariantsModelObj
class SetVariantsController extends GetxController {
  TextEditingController colorController = TextEditingController();

  TextEditingController greenController = TextEditingController();

  TextEditingController blackController = TextEditingController();

  TextEditingController redController = TextEditingController();

  Rx<SetVariantsModel> setVariantsModelObj = SetVariantsModel().obs;

  @override
  void onClose() {
    super.onClose();
    colorController.dispose();
    greenController.dispose();
    blackController.dispose();
    redController.dispose();
  }
}
