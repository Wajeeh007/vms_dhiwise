import '../../../core/app_export.dart';import 'cartitem_item_model.dart';/// This class defines the variables used in the [collections_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CollectionsModel {Rx<List<CartitemItemModel>> cartitemItemList = Rx([CartitemItemModel(title: "Women Wear".obs,productCount: "784 products".obs,tag1: "Product tag is equal to women clothes".obs,tag2: "Product tag is equal to 2 piece suit".obs),CartitemItemModel(title: "Footwear".obs,productCount: "500 products".obs,tag1: "Product tag is equal to women clothes".obs,tag2: "Product tag is equal to 3 piece suit\nProduct tag is equal to 2 piece suit\n... and 3 more".obs),CartitemItemModel(title: "Sports & Fitness".obs,productCount: "489 products".obs,tag1: "Product tag is equal to women clothes".obs,tag2: "Product tag is equal to 3 piece suit\nProduct tag is equal to 2 piece suit\n... and 3 more".obs),CartitemItemModel(title: "ISMMART Originals".obs,productCount: "750 products".obs,tag1: "Product tag is equal to women clothes".obs,tag2: "Product tag is equal to 3 piece suit\nProduct tag is equal to 2 piece suit\n... and 3 more".obs)]);

 }