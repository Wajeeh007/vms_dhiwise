import '../controller/product_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ProductListScreen.
///
/// This class ensures that the ProductListController is created when the
/// ProductListScreen is first loaded.
class ProductListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductListController());
  }
}
