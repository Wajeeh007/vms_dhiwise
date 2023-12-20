import '../../../core/app_export.dart';import 'createcollectionlist_item_model.dart';/// This class defines the variables used in the [store_list_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StoreListModel {Rx<List<CreatecollectionlistItemModel>> createcollectionlistItemList = Rx([CreatecollectionlistItemModel(collectionImage:ImageConstant.imgImage638x38.obs,collectionName: "ISMMART".obs),CreatecollectionlistItemModel(collectionImage:ImageConstant.imgImage7.obs,collectionName: "ISMMART".obs)]);

 }
