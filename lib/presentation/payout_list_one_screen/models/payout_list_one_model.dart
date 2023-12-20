import 'package:vms/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'userprofile_item_model.dart';/// This class defines the variables used in the [payout_list_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PayoutListOneModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<UserprofileItemModel>> userprofileItemList = Rx([UserprofileItemModel(userImage:ImageConstant.imgImage6.obs,title: "ISMMART".obs,subtitle: "/ismmartshop.com".obs,location: "Islamabad".obs,country: "Pakistan".obs,address: "2118 G-8/1, Islamabad 35624".obs,type: "Type:".obs,category: "Home Decor, Electronics".obs),UserprofileItemModel(userImage:ImageConstant.imgImage648x48.obs,title: "Naruto Pop Store".obs,subtitle: "/ismmartshop.com".obs,location: "Islamabad".obs,country: "Pakistan".obs,address: "2118 G-8/1, Islamabad 35624".obs,type: "Type:".obs,category: "Home Decor, Electronics".obs),UserprofileItemModel(userImage:ImageConstant.imgAvatarJosephMcfall.obs,subtitle: "Vendor Name".obs,address: "15 April 2023".obs,category: "Pending".obs)]);

 }
