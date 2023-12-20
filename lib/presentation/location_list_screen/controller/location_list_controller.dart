import 'package:vms/core/app_export.dart';import 'package:vms/presentation/location_list_screen/models/location_list_model.dart';/// A controller class for the LocationListScreen.
///
/// This class manages the state of the LocationListScreen, including the
/// current locationListModelObj
class LocationListController extends GetxController {Rx<LocationListModel> locationListModelObj = LocationListModel().obs;

 }
