import 'package:e_mart/consts/strings.dart';
import 'package:e_mart/widgets/app_logo_widget.dart';
import 'package:e_mart/widgets/bg_widget.dart';
import 'package:e_mart/widgets/customButton.dart';
import 'package:e_mart/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/styles.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return bgWidget(Scaffold(
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.1).heightBox,
            ApplogoWidget(),
            10.heightBox,
            "Log in to $appname".text.fontFamily(bold).white.size(18).make(),
            20.heightBox,
            Column(
              children: [
                CustomTextFeild(tittle: email,hint: emailHint),
                30.heightBox,
                CustomTextFeild(tittle: password,hint: passwordHint),
                10.heightBox,
                Align(alignment: Alignment.centerRight,
                    child: TextButton(onPressed: (){}, child: forgetPass.text.make())),
                10.heightBox,
                CustomButton(tittle: login,onPress: (){}).box.width(context.screenWidth-50).make()
              ],
            ).box.white.rounded.padding(EdgeInsets.all(16)).width(context.screenWidth - 70).make(),
          ],
        ),
      ),
    ));
  }
}
