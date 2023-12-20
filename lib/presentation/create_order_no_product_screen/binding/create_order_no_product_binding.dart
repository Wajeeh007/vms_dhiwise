import '../controller/create_order_no_product_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateOrderNoProductScreen.
///
/// This class ensures that the CreateOrderNoProductController is created when the
/// CreateOrderNoProductScreen is first loaded.
class CreateOrderNoProductBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateOrderNoProductController());
  }
}
