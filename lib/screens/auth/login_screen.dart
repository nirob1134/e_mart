import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/consts/list.dart';
import 'package:e_mart/consts/strings.dart';
import 'package:e_mart/screens/auth/singup_screen.dart';
import 'package:e_mart/screens/home/home.dart';
import 'package:e_mart/widgets/app_logo_widget.dart';
import 'package:e_mart/widgets/bg_widget.dart';
import 'package:e_mart/widgets/customButton.dart';
import 'package:e_mart/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: Center(
          child: Column(
            children: [
              (context.screenHeight * 0.1).heightBox,
              ApplogoWidget(),
              10.heightBox,
              "Log in to E Mart".text.fontFamily(bold).white.size(18).make(),
              20.heightBox,
              Column(
                    children: [
                      CustomTextFeild(tittle: email, hint: emailHint),
                      20.heightBox,

                      CustomTextFeild(tittle: password, hint: passwordHint),
                      10.heightBox,

                      Align(
                        alignment: Alignment.centerRight,
                        child: TextButton(
                          onPressed: () {},
                          child: forgetPass.text.make(),
                        ),
                      ),
                      10.heightBox,

                      CustomButton(
                        tittle: login,
                        onPress: () {
                          Get.to(()=>Home());
                        },
                      ).box.width(context.screenWidth - 50).make(),
                      10.heightBox,

                      createNewAccount.text.color(fontGrey).make(),
                      10.heightBox,

                      Align(
                        alignment: Alignment.center,
                        child: TextButton(
                          onPressed: () {
                            Get.to(() => SingupScreen());
                          },
                          child: singup.text
                              .fontFamily(bold)
                              .color(redColor)
                              .make(),
                        ),
                      ),
                      20.heightBox,

                      loginWith.text.color(fontGrey).make(),
                      10.heightBox,

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ...List.generate(
                            socialIconList.length,
                            (index) => Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                              ),
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Image.asset(
                                  socialIconList[index],
                                  width: 30,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ).box.white.rounded
                  .padding(EdgeInsets.all(16))
                  .width(context.screenWidth - 80)
                  .shadowSm
                  .make(),
            ],
          ),
        ),
      ),
    );
  }
}
