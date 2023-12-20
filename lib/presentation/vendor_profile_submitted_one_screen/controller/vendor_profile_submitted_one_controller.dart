import 'package:vms/core/app_export.dart';
import 'package:vms/presentation/vendor_profile_submitted_one_screen/models/vendor_profile_submitted_one_model.dart';

/// A controller class for the VendorProfileSubmittedOneScreen.
///
/// This class manages the state of the VendorProfileSubmittedOneScreen, including the
/// current vendorProfileSubmittedOneModelObj
class VendorProfileSubmittedOneController extends GetxController {
  Rx<VendorProfileSubmittedOneModel> vendorProfileSubmittedOneModelObj =
      VendorProfileSubmittedOneModel().obs;
}
