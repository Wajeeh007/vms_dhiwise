import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_collections_screen/models/create_collections_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateCollectionsScreen.
///
/// This class manages the state of the CreateCollectionsScreen, including the
/// current createCollectionsModelObj
class CreateCollectionsController extends GetxController {TextEditingController priceController = TextEditingController();

TextEditingController inputFieldController = TextEditingController();

TextEditingController placeholderController = TextEditingController();

Rx<CreateCollectionsModel> createCollectionsModelObj = CreateCollectionsModel().obs;

Rx<bool> onlineStore = false.obs;

Rx<bool> buyButton = false.obs;

Rx<bool> pointofSale = false.obs;

Rx<bool> check = false.obs;

Rx<bool> shop = false.obs;

Rx<bool> facebookInstagram = false.obs;

@override void onClose() { super.onClose(); priceController.dispose(); inputFieldController.dispose(); placeholderController.dispose(); } 
 }
