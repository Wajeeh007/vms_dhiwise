import '../controller/orders_detail_page_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the OrdersDetailPageOneScreen.
///
/// This class ensures that the OrdersDetailPageOneController is created when the
/// OrdersDetailPageOneScreen is first loaded.
class OrdersDetailPageOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => OrdersDetailPageOneController());
  }
}
