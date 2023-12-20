import '../controller/create_collections_one_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreateCollectionsOneScreen.
///
/// This class ensures that the CreateCollectionsOneController is created when the
/// CreateCollectionsOneScreen is first loaded.
class CreateCollectionsOneBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreateCollectionsOneController());
  }
}
