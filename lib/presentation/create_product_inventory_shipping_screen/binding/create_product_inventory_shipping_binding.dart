import '../controller/create_product_inventory_shipping_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateProductInventoryShippingScreen.
///
/// This class ensures that the CreateProductInventoryShippingController is created when the
/// CreateProductInventoryShippingScreen is first loaded.
class CreateProductInventoryShippingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateProductInventoryShippingController());
  }
}
