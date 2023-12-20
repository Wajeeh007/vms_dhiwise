import '../controller/create_product_inventory_shipping_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateProductInventoryShippingOneScreen.
///
/// This class ensures that the CreateProductInventoryShippingOneController is created when the
/// CreateProductInventoryShippingOneScreen is first loaded.
class CreateProductInventoryShippingOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateProductInventoryShippingOneController());
  }
}
