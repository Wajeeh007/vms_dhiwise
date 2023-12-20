import '../../../core/app_export.dart';import 'userprofile1_item_model.dart';/// This class defines the variables used in the [location_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class LocationListModel {Rx<List<Userprofile1ItemModel>> userprofile1ItemList = Rx([Userprofile1ItemModel(linkedin:ImageConstant.imgLinkedin.obs,beverlyCenter: "Beverly Center".obs,text1: "Active".obs,islamabad: "Islamabad".obs,pakistan: "Pakistan".obs,address: "2118 G-8/1, Islamabad 35624".obs,phoneNumber: "(307) 555-0133".obs,lastUpdated: "Last updated".obs,date: "April 23, 2023".obs),Userprofile1ItemModel(date: "April 23, 2023".obs)]);

 }
