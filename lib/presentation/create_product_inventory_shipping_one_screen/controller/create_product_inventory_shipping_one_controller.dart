import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_product_inventory_shipping_one_screen/models/create_product_inventory_shipping_one_model.dart';/// A controller class for the CreateProductInventoryShippingOneScreen.
///
/// This class manages the state of the CreateProductInventoryShippingOneScreen, including the
/// current createProductInventoryShippingOneModelObj
class CreateProductInventoryShippingOneController extends GetxController {Rx<CreateProductInventoryShippingOneModel> createProductInventoryShippingOneModelObj = CreateProductInventoryShippingOneModel().obs;

Rx<bool> trackQuantity = false.obs;

Rx<bool> checkbox = false.obs;

Rx<bool> hasSkuOrBarcode = false.obs;

 }
