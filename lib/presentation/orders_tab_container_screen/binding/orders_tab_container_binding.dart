import '../controller/orders_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrdersTabContainerScreen.
///
/// This class ensures that the OrdersTabContainerController is created when the
/// OrdersTabContainerScreen is first loaded.
class OrdersTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrdersTabContainerController());
  }
}
