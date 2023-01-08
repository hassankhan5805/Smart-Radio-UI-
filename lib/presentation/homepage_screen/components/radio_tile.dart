import 'package:smartradio/presentation/myaudioplayer_screen/myaudioplayer_screen.dart';
import '../../../models/radiotile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

class RadioTile extends StatelessWidget {
  RadioTile(this.listrectangletenItemModelObj);
  final RadioTileItemModel listrectangletenItemModelObj;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => MyaudioplayerScreen()),
      child: Container(
        width: size.width,
        padding: getPadding(left: 16, top: 8, right: 16, bottom: 8),
        decoration: AppDecoration.fillGray800,
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle10,
              height: getSize(47.00),
              width: getSize(47.00),
              radius: BorderRadius.circular(
                getHorizontalSize(6.00),
              ),
              margin: getMargin(bottom: 1),
            ),
            Padding(
              padding: getPadding(left: 14, top: 6, bottom: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "lbl_nova".tr,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextBold14,
                  ),
                  Padding(
                    padding: getPadding(left: 1, top: 2),
                    child: Text(
                      "msg_australia_english".tr,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProTextRegular12,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              svgPath: ImageConstant.imgFavorite,
              height: getSize(24.00),
              width: getSize(24.00),
              margin: getMargin(top: 12, bottom: 12),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgOverflowmenu,
              height: getSize(24.00),
              width: getSize(24.00),
              margin: getMargin(left: 2, top: 12, right: 11, bottom: 12),
            ),
          ],
        ),
      ),
    );
  }
}
