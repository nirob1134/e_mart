import 'package:e_mart/consts/strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/colors.dart';
import '../../consts/styles.dart';
import '../../widgets/app_logo_widget.dart';
import '../../widgets/bg_widget.dart';
import '../../widgets/customButton.dart';
import '../../widgets/custom_text_field.dart';

class SingupScreen extends StatefulWidget {
  const SingupScreen({super.key});

  @override
  State<SingupScreen> createState() => _SingupScreenState();
}

class _SingupScreenState extends State<SingupScreen> {

  bool isCheck = false ;


  @override
  Widget build(BuildContext context) {
    return bgWidget(
      Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  (context.screenHeight * 0.1).heightBox,
                  ApplogoWidget(),
                  10.heightBox,
                  "Join the E Mart".text.fontFamily(bold).white.size(18).make(),
                  20.heightBox,
                  Column(
                        children: [
                          CustomTextFeild(tittle: name, hint: nameHint),
                          20.heightBox,

                          CustomTextFeild(tittle: email, hint: emailHint),
                          20.heightBox,

                          CustomTextFeild(tittle: password, hint: passwordHint),
                          20.heightBox,

                          CustomTextFeild(
                            tittle: retypePassword,
                            hint: passwordHint,
                          ),
                          10.heightBox,

                          Align(
                            alignment: Alignment.centerRight,
                            child: TextButton(
                              onPressed: () {},
                              child: forgetPass.text.make(),
                            ),
                          ),

                          Row(
                            children: [
                              Checkbox(
                                value: isCheck,
                                onChanged: (newValue) {
                                  setState(() {
                                    isCheck = newValue!;
                                  });
                                },
                                checkColor: Colors.white,
                              ),

                              RichText(text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: "I agree to the ",
                                    style: TextStyle(
                                      fontFamily: regular,
                                      color: fontGrey,
                                    )
                                  ),
                                  TextSpan(
                                      text: terms,
                                      style: TextStyle(
                                        fontFamily: bold,
                                        color: redColor,
                                      )
                                  )
                                ]
                              )),
                            ],
                          ),

                          20.heightBox,

                          CustomButton(
                            tittle: singup,
                            onPress: isCheck?() {

                            } : null,
                          ).box.width(context.screenWidth - 50).make(),
                          20.heightBox,

                          RichText(text: TextSpan(
                            children: [
                              TextSpan(
                                text: alreadyHaveAccount,
                                style: TextStyle(
                                  fontFamily: bold,
                                  color: fontGrey,
                                )
                              ),
                              TextSpan(
                                  text: login,
                                  style: TextStyle(
                                    fontFamily: bold,
                                    color: redColor,
                                  )
                              )
                            ]
                          )).onTap((){
                            Get.back();
                          })

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
        ),
      ),
    );
  }
}
