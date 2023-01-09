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
    return DefaultTabController(
      length: 4,
      child: Scaffold(
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
                        Divider(color: ColorConstant.lightGrey, thickness: 1.6),
                        TabBar(
                          // isScrollable: true,
                          // padding: EdgeInsets.symmetric(horizontal: 800),
                          // labelStyle: TextStyle(fontWeight: FontWeight.w),
                          unselectedLabelStyle:
                              TextStyle(fontSize: getSize(15)),
                          labelStyle: TextStyle(fontSize: getSize(15)),
                          indicatorWeight: 3.2,
                          unselectedLabelColor: Colors.white,
                          labelColor: ColorConstant.cyan500,
                          indicatorColor: ColorConstant.cyan500,
                          tabs: [
                            Tab(text: "Favourite"),
                            Tab(text: "All"),
                            Tab(text: "Region"),
                            Tab(text: "Language")
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(1000),
                    child: TabBarView(
                      children: [
                        //TabBar 1 for Favourites
                        Container(
                          width: size.width,
                          decoration: AppDecoration.fillGray800,
                          child: ListView.builder(
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
                        ),
                        //TabBar 2 for All
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
                                itemCount: controller
                                    .RadioTileItemModelObj.value.length,
                                itemBuilder: (context, index) {
                                  RadioTileItemModel model = controller
                                      .RadioTileItemModelRecentObj.value[index];
                                  return RadioTile(model);
                                },
                              ),
                            ],
                          ),
                        ),
                        //TabBar 3  for Region
                        Container(
                          width: size.width,
                          decoration: AppDecoration.fillGray800,
                          child: ListView.builder(
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
                        ),
                        //TabBar 4 for Language
                        Container(
                          width: size.width,
                          margin: getMargin(top: 20),
                          decoration: AppDecoration.fillGray800,
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomTextFormField(
                                width: 335,
                                focusNode: FocusNode(),
                                controller: controller.languageSearchController,
                                hintText: "msg_search_by_radio".tr,
                                textInputAction: TextInputAction.done,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: getPadding(top: 21, left: 15),
                                  child: Text(
                                    "lbl_select_language".tr,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtSFProTextRegular12Gray500,
                                  ),
                                ),
                              ),
                              ListView.builder(
                                physics: BouncingScrollPhysics(),
                                shrinkWrap: true,
                                itemCount: 20,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: EdgeInsets.only(left: 15),
                                    child: SizedBox(
                                      height: getVerticalSize(40),
                                      child: Row(
                                        children: [
                                          Text(
                                            "lbl_latin".tr,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtSFProTextRegular16,
                                          ),
                                          Spacer(),
                                          Checkbox(
                                              value: true,
                                              onChanged: (e) {},
                                              activeColor:
                                                  ColorConstant.cyan500,
                                              checkColor:
                                                  ColorConstant.lightGrey)
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
