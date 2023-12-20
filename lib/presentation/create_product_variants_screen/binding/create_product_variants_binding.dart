import '../controller/create_product_variants_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateProductVariantsScreen.
///
/// This class ensures that the CreateProductVariantsController is created when the
/// CreateProductVariantsScreen is first loaded.
class CreateProductVariantsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateProductVariantsController());
  }
}
