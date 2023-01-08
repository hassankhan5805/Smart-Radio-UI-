import 'package:flutter/material.dart';
import '../../core/utils/image_constant.dart';
import '../../core/utils/size_utils.dart';
import 'appbar_image.dart';

class MyAppBar extends StatelessWidget with PreferredSizeWidget {
  const MyAppBar({super.key});
  @override
  Size get preferredSize => Size(
        size.width,
        height,
      );
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: getVerticalSize(56),
      leadingWidth: 44,
      leading: IconButton(
          onPressed: () {}, icon: Icon(Icons.menu, color: Colors.white)),
      centerTitle: true,
      title: AppbarImage(
        height: getVerticalSize(34),
        width: getHorizontalSize(161),
        imagePath: ImageConstant.imgAppicon2,
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(Icons.add_box_outlined, color: Colors.white)),
      ],
    );
  }
}
