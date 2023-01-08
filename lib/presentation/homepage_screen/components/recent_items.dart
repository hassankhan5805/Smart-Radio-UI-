import 'package:smartradio/presentation/myaudioplayer_screen/myaudioplayer_screen.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

import '../../../models/radiotile_item_model.dart';

class RecentItms extends StatelessWidget {
  RecentItms(this.RadioTileItemModelObj);

  final RadioTileItemModel RadioTileItemModelObj;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => MyaudioplayerScreen()),
      child: IntrinsicWidth(
        child: Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: getPadding(right: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant
                      .imgRectangle11, //you need to change that to url image while connecting backend
                  height: getVerticalSize(85),
                  width: getHorizontalSize(93),
                  radius: BorderRadius.circular(getHorizontalSize(6)),
                ),
                Padding(
                  padding: getPadding(top: 4),
                  child: Text(
                    RadioTileItemModelObj.name!,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtSFProTextBold14,
                  ),
                ),
                Text(
                  RadioTileItemModelObj.country!,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProTextRegular12,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
