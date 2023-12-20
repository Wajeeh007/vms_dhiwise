import 'package:vms/core/app_export.dart';
import 'package:vms/presentation/set_price_screen/models/set_price_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the SetPriceScreen.
///
/// This class manages the state of the SetPriceScreen, including the
/// current setPriceModelObj
class SetPriceController extends GetxController {
  TextEditingController languageController = TextEditingController();

  Rx<SetPriceModel> setPriceModelObj = SetPriceModel().obs;

  Rx<bool> chargeTaxCheckBox = false.obs;

  @override
  void onClose() {
    super.onClose();
    languageController.dispose();
  }
}
