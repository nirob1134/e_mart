import 'package:e_mart/consts/consts.dart';
import 'package:flutter/material.dart';

Widget CustomTextFeild({String? tittle, String? hint , controller}){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      tittle!.text.color(redColor).fontFamily(semibold).size(16).make(),
      5.heightBox,
      TextFormField(
        controller: controller,
        decoration: InputDecoration(
          hintStyle: TextStyle(
            fontFamily: semibold,
            color: textfieldGrey
          ),
          hintText: hint,
          isDense: true,
          fillColor: lightGrey,
          filled: true,
          border: InputBorder.none,
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: redColor)
          )
        ),
      )
    ],
  );
}