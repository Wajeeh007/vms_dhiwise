import '../controller/edit_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EditLocationScreen.
///
/// This class ensures that the EditLocationController is created when the
/// EditLocationScreen is first loaded.
class EditLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EditLocationController());
  }
}
