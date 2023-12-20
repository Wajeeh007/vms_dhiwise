import '../../../core/app_export.dart';/// This class is used in the [storedetails_item_widget] screen.
class StoredetailsItemModel {StoredetailsItemModel({this.storeImage, this.storeName, this.storePrice, this.vendorName, this.paymentMethod, this.bankName, this.expiryDate, this.paymentStatus, this.id, }) { storeImage = storeImage  ?? Rx(ImageConstant.imgAvatarKarenNelson);storeName = storeName  ?? Rx("Store Name");storePrice = storePrice  ?? Rx("Rs. 165,820.00");vendorName = vendorName  ?? Rx("Vendor Name");paymentMethod = paymentMethod  ?? Rx("Bank Transfer");bankName = bankName  ?? Rx("Meezan Bank Ltd");expiryDate = expiryDate  ?? Rx("15 April 2023");paymentStatus = paymentStatus  ?? Rx("Paid");id = id  ?? Rx(""); }

Rx<String>? storeImage;

Rx<String>? storeName;

Rx<String>? storePrice;

Rx<String>? vendorName;

Rx<String>? paymentMethod;

Rx<String>? bankName;

Rx<String>? expiryDate;

Rx<String>? paymentStatus;

Rx<String>? id;

 }
