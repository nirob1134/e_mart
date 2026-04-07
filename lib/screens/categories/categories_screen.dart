import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/list.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Categories".text.white.fontFamily(bold).size(22).make(),
        backgroundColor: redColor,
      ),
      body: Container(
        padding: EdgeInsets.all(12),
        child: GridView.builder(

          shrinkWrap: true,
            itemCount: 9,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              mainAxisExtent: 200
            ),
            itemBuilder: (context,index){
              return Column(
                children: [
                  Image.asset(categoriesImage[index],height: 150,width: 200,fit: BoxFit.cover,),
                  10.heightBox,
                  "${categoriesList[index]}".text.fontFamily(bold).align(TextAlign.center).make()
                ],
              ).box.white.rounded.clip(Clip.antiAlias).shadowSm.make();
            }
        ),
      ),
    );
  }
}
