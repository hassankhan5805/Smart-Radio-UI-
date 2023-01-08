import 'package:smartradio/widgets/custom_text_form_field.dart';
import 'components/selectcity_item_widget.dart';
import '../../controllers/selectcity_controller.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

class SelectcityScreen extends StatelessWidget {
  final controller = Get.find<SelectcityController>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.lightGrey,
            body: Container(
                width: size.width,
                padding: getPadding(top: 60, bottom: 25),
                child: ListView(children: [
                  // SizedBox(height: getSize(40)),
                  Image.asset(ImageConstant.imgImage3, height: getSize(110)),
                  SizedBox(height: getSize(20)),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                        height: getVerticalSize(40.00),
                        width: getHorizontalSize(335.00),
                        margin: getMargin(top: 21),
                        child: CustomTextFormField(),
                      )),
                  Container(
                      height: getSize(530.00),
                      padding: getPadding(top: 21),
                      child: Obx(() {
                        controller.selectcityModelObj.value;
                        return ListView.builder(
                            physics: AlwaysScrollableScrollPhysics(),
                            itemCount: 15,
                            itemBuilder: (context, index) {
                              return SelectcityItemWidget(
                                  controller.selectcityModelObj.value[index]);
                            });
                      }))
                ]))));
  }
}
