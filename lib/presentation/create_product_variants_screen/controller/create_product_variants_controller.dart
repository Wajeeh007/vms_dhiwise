import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_product_variants_screen/models/create_product_variants_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateProductVariantsScreen.
///
/// This class manages the state of the CreateProductVariantsScreen, including the
/// current createProductVariantsModelObj
class CreateProductVariantsController extends GetxController {TextEditingController valueController = TextEditingController();

TextEditingController countryController = TextEditingController();

TextEditingController searchController = TextEditingController();

Rx<CreateProductVariantsModel> createProductVariantsModelObj = CreateProductVariantsModel().obs;

Rx<bool> isPhysicalProduct = false.obs;

Rx<bool> checkbox = false.obs;

Rx<bool> hasSkuOrBarcode = false.obs;

Rx<bool> isSelectedSwitch = false.obs;

Rx<bool> onlineStore = false.obs;

Rx<bool> check = false.obs;

Rx<bool> markets = false.obs;

@override void onClose() { super.onClose(); valueController.dispose(); countryController.dispose(); searchController.dispose(); } 
 }
