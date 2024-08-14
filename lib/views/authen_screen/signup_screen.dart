import 'package:emart_app/consts/consts.dart';
import 'package:emart_app/widgets_common/applogo_widget.dart';
import 'package:emart_app/widgets_common/bg_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../consts/list_icon.dart';
import '../../widgets_common/custom_textfield.dart';
import '../../widgets_common/widget_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
                customTextField(hint: nameHint, title: name),
                customTextField(hint: emailHint, title: email),
                customTextField(hint: passwordHint, title: password),
                customTextField(
                    hint: reTypePasswordHint, title: reTypePassword),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (newValue) {},
                          checkColor: redColor,
                        ),
                        10.widthBox,
                        RichText(
                            text: const TextSpan(children: [
                          TextSpan(
                              text: "I agree to the ",
                              style: TextStyle(
                                fontFamily: bold,
                                color: fontGrey,
                              )),
                          TextSpan(
                              text: termAndCond,
                              style:
                                  TextStyle(fontFamily: bold, color: redColor)
                          )
                        ])),
                      ],
                    )),
                10.heightBox,
                widgetButton(
                        color: redColor,
                        title: signup,
                        textColor: whiteColor,
                        onPress: () {})
                    .box
                    .width(context.screenWidth - 50)
                    .make(),
                10.heightBox,
                RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            fontFamily: bold,
                            color: fontGrey,
                          )),
                      TextSpan(
                          text: login,
                          style:
                          TextStyle(fontFamily: bold, color: redColor)
                      )
                    ])).onTap(() {
                      Get.back();
                }),
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
