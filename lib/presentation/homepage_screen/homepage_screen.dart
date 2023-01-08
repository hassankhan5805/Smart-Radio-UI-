import 'package:smartradio/widgets/app_bar/appbar.dart';
import 'components/recent_items.dart';
import 'components/radio_tile.dart';
import '../../controllers/homepage_controller.dart';
import '../../models/radiotile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';
import 'package:smartradio/widgets/custom_text_form_field.dart';

class HomepageScreen extends GetWidget<HomepageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.lightGrey,
      body: SizedBox(
        width: size.width,
        child: SingleChildScrollView(
          child: Container(
            width: size.width,
            child: Column(
              children: [
                Container(
                  width: size.width,
                  decoration: AppDecoration.fillGray80001,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      MyAppBar(),
                      Padding(
                        padding: getPadding(left: 23, top: 19),
                        child: Text(
                          "lbl_recently_listed".tr,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtSFProTextRegular16,
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          height: getVerticalSize(133.00),
                          child: ListView.builder(
                            padding: getPadding(left: 20, top: 12),
                            scrollDirection: Axis.horizontal,
                            physics: BouncingScrollPhysics(),
                            itemCount: controller
                                .RadioTileItemModelRecentObj.value.length,
                            itemBuilder: (context, index) {
                              RadioTileItemModel model = controller
                                  .RadioTileItemModelRecentObj.value[index];
                              return RecentItms(model);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: size.width,
                  margin: getMargin(top: 20),
                  decoration: AppDecoration.fillGray800,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                        width: 335,
                        focusNode: FocusNode(),
                        controller: controller.radiosearchbarController,
                        hintText: "msg_search_by_radio".tr,
                        textInputAction: TextInputAction.done,
                      ),
                      ListView.builder(
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                        itemCount:
                            controller.RadioTileItemModelObj.value.length,
                        itemBuilder: (context, index) {
                          RadioTileItemModel model = controller
                              .RadioTileItemModelRecentObj.value[index];
                          return RadioTile(model);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
