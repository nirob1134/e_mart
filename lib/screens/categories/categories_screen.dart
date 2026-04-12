import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/list.dart';
import 'package:e_mart/screens/categories/categories_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(25),
          ),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [redColor, Colors.deepOrange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
        ),
          title: "Categories".text.white.fontFamily(bold).size(22).make(),
      ),

      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(

          shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 200
            ),
            itemBuilder: (context,index){
              return Column(
                children: [
                  Image.asset(categoriesImage[index],height: 150,width: 100,fit: BoxFit.fill,),
                  10.heightBox,
                  "${categoriesList[index]}".text.fontFamily(bold).align(TextAlign.center).make()
                ],
              ).box.white.rounded.clip(Clip.antiAlias).shadowSm.make().onTap((){
                Get.to(()=>CategoriesDetails(tittle: categoriesList[index]));
              });
            }
        ),
      ),
    );
  }
}



