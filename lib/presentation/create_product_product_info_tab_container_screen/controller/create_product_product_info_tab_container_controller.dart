import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_product_product_info_tab_container_screen/models/create_product_product_info_tab_container_model.dart';import 'package:flutter/material.dart';/// A controller class for the CreateProductProductInfoTabContainerScreen.
///
/// This class manages the state of the CreateProductProductInfoTabContainerScreen, including the
/// current createProductProductInfoTabContainerModelObj
class CreateProductProductInfoTabContainerController extends GetxController with  GetSingleTickerProviderStateMixin {TextEditingController nameController = TextEditingController();

TextEditingController placeholderController = TextEditingController();

Rx<CreateProductProductInfoTabContainerModel> createProductProductInfoTabContainerModelObj = CreateProductProductInfoTabContainerModel().obs;

late TabController tabviewController = Get.put(TabController(vsync: this, length: 2));

@override void onClose() { super.onClose(); nameController.dispose(); placeholderController.dispose(); } 
 }
