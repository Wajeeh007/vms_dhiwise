import '../controller/create_payout_controller.dart';
import 'package:get/get.dart';

/// A binding class for the CreatePayoutScreen.
///
/// This class ensures that the CreatePayoutController is created when the
/// CreatePayoutScreen is first loaded.
class CreatePayoutBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CreatePayoutController());
  }
}
