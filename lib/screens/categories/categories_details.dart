import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/screens/categories/items_details.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/images.dart';
import '../../consts/styles.dart';

class CategoriesDetails extends StatelessWidget {
  final String? tittle;

  const CategoriesDetails({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [redColor, Colors.deepOrange],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(25)),
          ),
        ),
        title: tittle!.text.white.fontFamily(bold).size(18).make(),
      ),

      body: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              physics: BouncingScrollPhysics(),
              child: Row(
                children: List.generate(6, (index) {
                  return "Baby Clothing".text
                      .fontFamily(semibold)
                      .size(13)
                      .color(darkFontGrey)
                      .makeCentered()
                      .box
                      .white
                      .rounded
                      .border(color: Colors.grey.shade300)
                      .shadowSm
                      .padding(
                        const EdgeInsets.symmetric(
                          horizontal: 16,
                          vertical: 10,
                        ),
                      )
                      .margin(
                        const EdgeInsets.symmetric(horizontal: 6, vertical: 8),
                      )
                      .make();
                }),
              ),
            ),
            10.heightBox,

            //items container
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                shrinkWrap: true,
                itemCount: 6,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  mainAxisExtent: 260,
                ),
                itemBuilder: (context, index) {
                  return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // 🔥 Product Image with rounded + full width
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              imgP3,
                              height: 150,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
                          ),

                          10.heightBox,

                          // 🔥 Product Name
                          "Laptop 4GB/64GB".text
                              .fontFamily(semibold)
                              .size(14)
                              .color(darkFontGrey)
                              .maxLines(2)
                              .make(),

                          6.heightBox,

                          // 🔥 Price + Optional old price
                          Row(
                            children: [
                              "\$120".text
                                  .color(redColor)
                                  .fontFamily(bold)
                                  .size(16)
                                  .make(),

                              6.widthBox,

                              "\$150".text
                                  .size(12)
                                  .color(Colors.grey)
                                  .lineThrough
                                  .make(),
                            ],
                          ),
                        ],
                      ).box.white.rounded
                      .border(color: Colors.grey.shade200)
                      .shadowSm // 🔥 shadow for elevation
                      .padding(const EdgeInsets.all(10))
                      .make().onTap(() {
                        Get.to(()=>ItemsDetails(tittle: "Dummy Item"));
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
