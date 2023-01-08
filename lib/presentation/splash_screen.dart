import 'package:smartradio/presentation/selectcity_screen/selectcity_screen.dart';
import 'package:flutter/material.dart';
import 'package:smartradio/core/app_export.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(3.seconds, () => Get.to(() => SelectcityScreen()));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.lightGrey,
        body: Container(
          width: size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAppicon,
                height: getSize(128.00),
                width: getSize(128.00),
                margin: getMargin(bottom: 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
