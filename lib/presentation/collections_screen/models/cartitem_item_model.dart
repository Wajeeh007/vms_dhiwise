import '../../../core/app_export.dart';/// This class is used in the [cartitem_item_widget] screen.
class CartitemItemModel {CartitemItemModel({this.title, this.productCount, this.tag1, this.tag2, this.id, }) { title = title  ?? Rx("Women Wear");productCount = productCount  ?? Rx("784 products");tag1 = tag1  ?? Rx("Product tag is equal to women clothes");tag2 = tag2  ?? Rx("Product tag is equal to 2 piece suit");id = id  ?? Rx(""); }

Rx<String>? title;

Rx<String>? productCount;

Rx<String>? tag1;

Rx<String>? tag2;

Rx<String>? id;

 }
