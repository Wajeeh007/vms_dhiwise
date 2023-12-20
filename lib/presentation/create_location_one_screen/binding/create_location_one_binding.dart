import '../controller/create_location_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateLocationOneScreen.
///
/// This class ensures that the CreateLocationOneController is created when the
/// CreateLocationOneScreen is first loaded.
class CreateLocationOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateLocationOneController());
  }
}
