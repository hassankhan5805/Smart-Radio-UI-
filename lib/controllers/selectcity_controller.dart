import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/models/selectcity_item_model.dart';

class SelectcityController extends GetxController {
  Rx<List<SelectcityItemModel>> selectcityModelObj = RxList.filled(15,
          SelectcityItemModel(id: "", city: "Melbourne", country: "Australia",isSelected: false))
      .obs;

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
