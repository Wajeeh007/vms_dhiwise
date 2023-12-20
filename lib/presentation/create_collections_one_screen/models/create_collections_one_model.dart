import 'inputfield_item_model.dart';import 'package:vms/data/models/selectionPopupModel/selection_popup_model.dart';import '../../../core/app_export.dart';/// This class defines the variables used in the [create_collections_one_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CreateCollectionsOneModel {Rx<List<InputfieldItemModel>> inputfieldItemList = Rx(List.generate(2,(index) =>InputfieldItemModel()));

Rx<List<String>> radioList = Rx(["lbl_all_conditions","lbl_any_condition"]);

Rx<List<SelectionPopupModel>> dropdownItemList = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

Rx<List<SelectionPopupModel>> dropdownItemList1 = Rx([SelectionPopupModel(id:1,title:"Item One",isSelected:true,),SelectionPopupModel(id:2,title:"Item Two",),SelectionPopupModel(id:3,title:"Item Three",)]);

 }
