import '../controller/create_location_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateLocationScreen.
///
/// This class ensures that the CreateLocationController is created when the
/// CreateLocationScreen is first loaded.
class CreateLocationBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateLocationController());
  }
}
