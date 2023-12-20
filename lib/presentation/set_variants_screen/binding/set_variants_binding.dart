import '../controller/set_variants_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SetVariantsScreen.
///
/// This class ensures that the SetVariantsController is created when the
/// SetVariantsScreen is first loaded.
class SetVariantsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SetVariantsController());
  }
}
