import 'package:vms/core/app_export.dart';import 'package:vms/presentation/create_product_inventory_shipping_two_screen/models/create_product_inventory_shipping_two_model.dart';/// A controller class for the CreateProductInventoryShippingTwoScreen.
///
/// This class manages the state of the CreateProductInventoryShippingTwoScreen, including the
/// current createProductInventoryShippingTwoModelObj
class CreateProductInventoryShippingTwoController extends GetxController {Rx<CreateProductInventoryShippingTwoModel> createProductInventoryShippingTwoModelObj = CreateProductInventoryShippingTwoModel().obs;

Rx<bool> productSkuOrBarcode = false.obs;

Rx<bool> trackQuantity = false.obs;

Rx<bool> continueSelling = false.obs;

 }
