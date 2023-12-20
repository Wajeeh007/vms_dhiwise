import '../../../core/app_export.dart';import 'radio_item_model.dart';/// This class defines the variables used in the [create_collections_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreateCollectionsModel {Rx<List<RadioItemModel>> radioItemList = Rx([RadioItemModel(imageClass:ImageConstant.imgContrast.obs,text: "Manual".obs),RadioItemModel(text: "Automatic".obs)]);

 }
