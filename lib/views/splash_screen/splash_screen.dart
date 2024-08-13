//Loading page
import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/authen_screen/login_screen.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  onChangeLoginScreen(){
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    onChangeLoginScreen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: redColor,
      body: Center(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(icSplashBg, width: 300),
            ),
            20.heightBox, //Cách 1 khoảng 20
            applogoWidget(),
            10.heightBox,
            appname.text.fontFamily(bold).size(22).white.make(), //Tên app
            5.heightBox,
            appversion.text.white.make(), //Tên version
            const Spacer(), //Cách xuống cuối page
            credits.text.white.fontFamily(semibold).make(), //Tên credit
            30.heightBox
          ],
        ),
      ),
    );
  }
}

