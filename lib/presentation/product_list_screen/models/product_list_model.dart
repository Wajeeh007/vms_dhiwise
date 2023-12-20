import 'package:vms/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';import 'productlist_item_model.dart';/// This class defines the variables used in the [product_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ProductListModel {Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<ProductlistItemModel>> productlistItemList = Rx([ProductlistItemModel(productName: "Nike 360".obs,stockCount: "4 in stock".obs,category: "Category".obs,vendorName: "Vendor_name".obs,status: "Active".obs),ProductlistItemModel(productName: "IPhone X".obs,stockCount: "10 in stock".obs,category: "Category".obs,vendorName: "Vendor_name".obs,status: "Active".obs),ProductlistItemModel(productName: "MacBook 15’".obs,stockCount: "4 in stock".obs,category: "Category".obs,vendorName: "Vendor_name".obs,status: "Draft".obs),ProductlistItemModel(productName: "milk and honey".obs,stockCount: "25 in stock".obs,category: "Category".obs,vendorName: "Vendor_name".obs,status: "Active".obs)]);

 }
