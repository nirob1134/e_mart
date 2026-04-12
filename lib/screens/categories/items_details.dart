import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/list.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../consts/styles.dart';

class ItemsDetails extends StatelessWidget {
  final String? tittle;

  const ItemsDetails({super.key, required this.tittle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        title: tittle?.text.color(darkFontGrey).fontFamily(bold).make(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.share, color: darkFontGrey),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.favorite_border_outlined,
              color: darkFontGrey,
            ),
          ),
        ],
      ),

      body: Column(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // swiper section
                      VxSwiper.builder(
                        autoPlay: true,
                        height: 350,
                        aspectRatio: 16 / 9,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Image.asset(
                            imgFc5,
                            width: double.infinity,
                            fit: BoxFit.cover,
                          );
                        },
                      ),
                      10.heightBox,
                      tittle!.text
                          .size(20)
                          .color(darkFontGrey)
                          .fontFamily(bold)
                          .make(),
                      10.heightBox,
                      VxRating(
                        onRatingUpdate: (value) {},
                        normalColor: textfieldGrey,
                        selectionColor: golden,
                        count: 5,
                        size: 25,
                        stepInt: true,
                      ),
                      10.heightBox,
                      "\$300".text.color(redColor).fontFamily(bold).make(),
                      10.heightBox,
                      Row(
                            children: [
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    "Seller".text.white
                                        .fontFamily(semibold)
                                        .make(),
                                    5.heightBox,
                                    "In House Brands".text
                                        .fontFamily(semibold)
                                        .color(darkFontGrey)
                                        .size(16)
                                        .make(),
                                  ],
                                ),
                              ),
                              const CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Icon(
                                  Icons.message_rounded,
                                  color: darkFontGrey,
                                ),
                              ),
                            ],
                          ).box
                          .height(60)
                          .padding(const EdgeInsets.symmetric(horizontal: 16))
                          .color(textfieldGrey)
                          .rounded
                          .make(),

                      20.heightBox,

                      // Color and total amount
                      Column(
                        children: [
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Color".text
                                    .color(darkFontGrey)
                                    .fontFamily(semibold)
                                    .make(),
                              ),
                              Row(
                                children: List.generate(
                                  3,
                                  (index) => VxBox()
                                      .size(40, 40)
                                      .roundedFull
                                      .color(Vx.randomPrimaryColor)
                                      .margin(
                                        EdgeInsets.symmetric(horizontal: 4),
                                      )
                                      .make(),
                                ),
                              ),
                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),

                          //quantify row
                          Row(
                            children: [
                              SizedBox(
                                width: 100,
                                child: "Quantity".text
                                    .color(darkFontGrey)
                                    .fontFamily(semibold)
                                    .make(),
                              ),
                              Row(
                                children: [
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.remove),
                                  ),
                                  "0".text
                                      .color(darkFontGrey)
                                      .fontFamily(bold)
                                      .make(),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(Icons.add),
                                  ),
                                  10.widthBox,
                                  "(0 Available)".text
                                      .color(textfieldGrey)
                                      .make(),
                                ],
                              ),
                            ],
                          ).box.padding(const EdgeInsets.all(8)).make(),

                          Row(
                                children: [
                                  SizedBox(
                                    width: 100,
                                    child: "Total Amount".text
                                        .color(darkFontGrey)
                                        .fontFamily(semibold)
                                        .make(),
                                  ),
                                  "\$0.00".text
                                      .color(redColor)
                                      .fontFamily(bold)
                                      .make(),
                                ],
                              ).box
                              .padding(const EdgeInsets.all(8))
                              .color(Vx.red50)
                              .make(),
                        ],
                      ).box.white.shadowSm.make(),

                      //description section
                      20.heightBox,

                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(4),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              "Description".text
                                  .color(darkFontGrey)
                                  .fontFamily(bold)
                                  .size(20)
                                  .make(),
                              10.heightBox,
                              "This is a dummy item and dummy description here ..... "
                                  .text
                                  .color(darkFontGrey)
                                  .make(),
                            ],
                          ),
                        ),
                      ),

                      10.heightBox,

                      // ItemDetailsButton
                      ListView(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        children: List.generate(
                          itemsDetailsButton.length,
                          (index) => ListTile(
                            contentPadding: EdgeInsets.all(4),
                            title: "${itemsDetailsButton[index]}".text
                                .fontFamily(semibold)
                                .color(darkFontGrey)
                                .make(),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      ),

                      20.heightBox,
                      //product may you like 
                      
                      "Products May You Like ". text.fontFamily(bold).color(darkFontGrey).size(20).make(),
                      
                      10.heightBox,

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            6,
                                (index) =>
                                Column(
                                  crossAxisAlignment:
                                  CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      imgP1,
                                      width: 150,
                                      fit: BoxFit.cover,
                                    ),
                                    10.heightBox,
                                    "Laptop 4GB/64GB".text
                                        .fontFamily(semibold)
                                        .color(darkFontGrey)
                                        .make(),
                                    5.heightBox,
                                    "\$600".text
                                        .color(redColor)
                                        .fontFamily(bold)
                                        .make(),
                                  ],
                                ).box.white
                                    .margin(const EdgeInsets.all(5))
                                    .padding(const EdgeInsets.all(8))
                                    .rounded
                                    .make(),
                          ),
                        ),
                      ),


                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: redColor,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(4),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  "Add to cart",
                  style: TextStyle(fontFamily: semibold, fontSize: 18),
                ),
              ),
            ),
          ],
        ),
    );
  }
}
