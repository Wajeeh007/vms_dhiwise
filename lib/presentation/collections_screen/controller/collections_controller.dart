import 'package:vms/core/app_export.dart';import 'package:vms/presentation/collections_screen/models/collections_model.dart';/// A controller class for the CollectionsScreen.
///
/// This class manages the state of the CollectionsScreen, including the
/// current collectionsModelObj
class CollectionsController extends GetxController {Rx<CollectionsModel> collectionsModelObj = CollectionsModel().obs;

 }
