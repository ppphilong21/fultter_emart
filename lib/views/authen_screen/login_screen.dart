import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/views/authen_screen/signup_screen.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../consts/list_icon.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/widget_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
        child: Scaffold(
      body: Center(
        child: Column(
          children: [
            //Hiển thị logo
            (context.screenHeight * 0.1)
                .heightBox, // Cách 1 khoảng = 0.1 screen height
            applogoWidget(), // Hiển thị ảnh Logo
            10.heightBox,
            "Login to $appname".text.fontFamily(bold).white.size(22).make(),
            10.heightBox,
            //Tạo khung cho form
            Column(
              children: [
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                    onPressed: () {},
                    child: forgetPassword.text.make(),
                  ),
                ),
                10.heightBox,
                widgetButton(
                        color: redColor,
                        title: login,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                createNewAccount.text.color(fontGrey).make(),
                10.heightBox,
                widgetButton(
                        color: redColor,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {
                          Get.to(() => const SignUpScreen());
                        })
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                loginWith.text.color(fontGrey).make(),
                10.heightBox,
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      3,
                      (index) => Padding(
                          padding: const EdgeInsets.all(8),
                          child: CircleAvatar(
                            backgroundColor: lightGrey,
                            radius: 25,
                            child: Image.asset(
                              socialIconList[index],
                              width: 30,
                            ),
                          )),
                    ))
              ],
            )
                .box
                .white
                .rounded
                .padding(const EdgeInsets.all(16))
                .width(context.screenWidth - 70)
                .shadowSm
                .make()
          ],
        ),
      ),
    ));
  }
}
