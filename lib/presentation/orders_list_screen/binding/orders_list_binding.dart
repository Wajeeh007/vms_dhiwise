import '../controller/orders_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrdersListScreen.
///
/// This class ensures that the OrdersListController is created when the
/// OrdersListScreen is first loaded.
class OrdersListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrdersListController());
  }
}
