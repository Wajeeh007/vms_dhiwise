import '../controller/set_price_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SetPriceScreen.
///
/// This class ensures that the SetPriceController is created when the
/// SetPriceScreen is first loaded.
class SetPriceBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetPriceController());
  }
}
