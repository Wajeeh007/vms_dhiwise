import '../controller/create_product_inventory_shipping_two_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateProductInventoryShippingTwoScreen.
///
/// This class ensures that the CreateProductInventoryShippingTwoController is created when the
/// CreateProductInventoryShippingTwoScreen is first loaded.
class CreateProductInventoryShippingTwoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateProductInventoryShippingTwoController());
  }
}
