import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_product_inventory_shipping_screen/models/create_product_inventory_shipping_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateProductInventoryShippingScreen.
///
/// This class manages the state of the CreateProductInventoryShippingScreen, including the
/// current createProductInventoryShippingModelObj
class CreateProductInventoryShippingController extends GetxController {TextEditingController inputController = TextEditingController();

TextEditingController inputController1 = TextEditingController();

Rx<CreateProductInventoryShippingModel> createProductInventoryShippingModelObj = CreateProductInventoryShippingModel().obs;

Rx<bool> trackQuantity = false.obs;

Rx<bool> checkbox = false.obs;

Rx<bool> hasSkuOrBarcode = false.obs;

@override void onClose() { super.onClose(); inputController.dispose(); inputController1.dispose(); } 
 }
