import '../controller/location_list_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LocationListScreen.
///
/// This class ensures that the LocationListController is created when the
/// LocationListScreen is first loaded.
class LocationListBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LocationListController());
  }
}
