import 'package:vms/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'storedetails_item_model.dart';/// This class defines the variables used in the [payout_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PayoutListModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<StoredetailsItemModel>> storedetailsItemList = Rx([StoredetailsItemModel(storeImage:ImageConstant.imgAvatarKarenNelson.obs,storeName: "Store Name".obs,storePrice: "Rs. 165,820.00".obs,vendorName: "Vendor Name".obs,paymentMethod: "Bank Transfer".obs,bankName: "Meezan Bank Ltd".obs,expiryDate: "15 April 2023".obs,paymentStatus: "Paid".obs),StoredetailsItemModel(storeImage:ImageConstant.imgAvatarRobertBrown.obs,storeName: "Store Name".obs,storePrice: "Rs. 165,820.00".obs,vendorName: "Vendor Name".obs,paymentMethod: "Bank Transfer".obs,bankName: "Meezan Bank Ltd".obs,expiryDate: "15 April 2023".obs,paymentStatus: "In-process".obs),StoredetailsItemModel(storeImage:ImageConstant.imgAvatarJosephMcfall.obs,storeName: "Store Name".obs,storePrice: "Rs. 165,820.00".obs,vendorName: "Vendor Name".obs,paymentMethod: "Bank Transfer".obs,bankName: "Meezan Bank Ltd".obs,expiryDate: "15 April 2023".obs,paymentStatus: "Pending".obs)]);

 }