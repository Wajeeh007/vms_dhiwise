import '../controller/create_product_product_info_tab_container_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateProductProductInfoTabContainerScreen.
///
/// This class ensures that the CreateProductProductInfoTabContainerController is created when the
/// CreateProductProductInfoTabContainerScreen is first loaded.
class CreateProductProductInfoTabContainerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateProductProductInfoTabContainerController());
  }
}
