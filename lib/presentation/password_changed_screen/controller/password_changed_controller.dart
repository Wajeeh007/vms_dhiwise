import 'package:vms/core/app_export.dart';import 'package:vms/presentation/password_changed_screen/models/password_changed_model.dart';/// A controller class for the PasswordChangedScreen.
///
/// This class manages the state of the PasswordChangedScreen, including the
/// current passwordChangedModelObj
class PasswordChangedController extends GetxController {Rx<PasswordChangedModel> passwordChangedModelObj = PasswordChangedModel().obs;

 }
