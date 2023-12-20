import '../controller/create_order_with_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateOrderWithProductScreen.
///
/// This class ensures that the CreateOrderWithProductController is created when the
/// CreateOrderWithProductScreen is first loaded.
class CreateOrderWithProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateOrderWithProductController());
  }
}
