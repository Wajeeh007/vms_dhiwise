import '../../../core/app_export.dart';/// This class is used in the [productlist_item_widget] screen.
class ProductlistItemModel {ProductlistItemModel({this.productName, this.stockCount, this.category, this.vendorName, this.status, this.id, }) { productName = productName  ?? Rx("Nike 360");stockCount = stockCount  ?? Rx("4 in stock");category = category  ?? Rx("Category");vendorName = vendorName  ?? Rx("Vendor_name");status = status  ?? Rx("Active");id = id  ?? Rx(""); }

Rx<String>? productName;

Rx<String>? stockCount;

Rx<String>? category;

Rx<String>? vendorName;

Rx<String>? status;

Rx<String>? id;

 }
