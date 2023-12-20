import '../controller/create_collections_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateCollectionsScreen.
///
/// This class ensures that the CreateCollectionsController is created when the
/// CreateCollectionsScreen is first loaded.
class CreateCollectionsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateCollectionsController());
  }
}
