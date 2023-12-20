import 'package:vms/core/app_export.dart';import 'package:vms/presentation/store_list_screen/models/store_list_model.dart';/// A controller class for the StoreListScreen.
///
/// This class manages the state of the StoreListScreen, including the
/// current storeListModelObj
class StoreListController extends GetxController {Rx<StoreListModel> storeListModelObj = StoreListModel().obs;

 }
