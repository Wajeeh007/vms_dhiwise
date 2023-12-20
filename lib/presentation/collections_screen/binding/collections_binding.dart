import '../controller/collections_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CollectionsScreen.
///
/// This class ensures that the CollectionsController is created when the
/// CollectionsScreen is first loaded.
class CollectionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CollectionsController());
  }
}
