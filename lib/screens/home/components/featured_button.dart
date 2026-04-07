import 'package:e_mart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget featuresButtons({String? tittle ,icon}) {
  return Row(
        children: [
          Image.asset(icon, width: 60, fit: BoxFit.fill),
          10.widthBox,
          tittle!.text.fontFamily(semibold).color(darkFontGrey).make(),
        ],
      ).box
      .width(200)
      .padding(const EdgeInsets.all(4))
      .white
      .rounded
      .margin(const EdgeInsets.symmetric(horizontal: 5))
      .outerShadowSm
      .make();
}
