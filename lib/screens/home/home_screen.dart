import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/list.dart';
import 'package:e_mart/screens/home/components/featured_button.dart';
import 'package:e_mart/widgets/home_buttons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            children: [
              // Search Bar
              Container(
                alignment: Alignment.center,
                height: 60,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search Anything......",
                    hintStyle: TextStyle(color: textfieldGrey),
                    suffixIcon: Icon(Icons.search_outlined),
                    suffixIconColor: textfieldGrey,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide.none,
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(color: Colors.grey, width: 1),
                    ),
                  ),
                ),
              ),

              10.heightBox,

              // Expanded scrollable content
              Expanded(
                child: SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      // First swiper banner
                      VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: sliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                                sliderList[index],
                                fit: BoxFit.fill,
                              ).box.rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        },
                      ),

                      20.heightBox,

                      // Deals buttons (Today's Deal & Flash Sale)
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          2,
                          (index) => HomeButtons(
                            context.screenWidth * 0.4,
                            100,
                            index == 0 ? icTodaysDeal : icFlashDeal,
                            index == 0 ? "Today's Deal" : "Flash Sale",
                          ),
                        ),
                      ),

                      20.heightBox,

                      // Second swiper banner
                      VxSwiper.builder(
                        aspectRatio: 16 / 9,
                        autoPlay: true,
                        height: 150,
                        enlargeCenterPage: true,
                        itemCount: secondSliderList.length,
                        itemBuilder: (context, index) {
                          return Image.asset(
                                secondSliderList[index],
                                fit: BoxFit.fill,
                              ).box.rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        },
                      ),

                      20.heightBox,

                      // Categories buttons
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: List.generate(
                            3,
                            (index) => HomeButtons(
                              context.screenWidth * 0.4,
                              100,
                              index == 0
                                  ? icTopCategories
                                  : index == 1
                                  ? icBrands
                                  : icTopSeller,
                              index == 0
                                  ? "Top Categories"
                                  : index == 1
                                  ? "Brands"
                                  : "Top Sellers",
                            ).paddingOnly(right: 12),
                          ),
                        ),
                      ),

                      20.heightBox,

                      // feature categories
                      Align(
                        alignment: Alignment.centerLeft,
                        child: "Feature Categories".text
                            .fontFamily(bold)
                            .color(darkFontGrey)
                            .size(22)
                            .make(),
                      ),
                      20.heightBox,

                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            3,
                            (index) => Column(
                              children: [
                                featuresButtons(
                                  icon: featuredList1[index],
                                  tittle: featuredTittle1[index],
                                ),
                                10.heightBox,
                                featuresButtons(
                                  icon: featuredList2[index],
                                  tittle: featuredTittle2[index],
                                ),
                              ],
                            ),
                          ).toList(),
                        ),
                      ),
                      20.heightBox,

                      //featured Products
                      Container(
                        decoration: BoxDecoration(color: redColor),
                        width: double.infinity,
                        padding: EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            "Featured Products".text
                                .fontFamily(bold)
                                .color(Colors.white)
                                .size(22)
                                .make(),
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
                      20.heightBox,

                      //all Products
                      GridView.builder(
                        shrinkWrap: true,
                        itemCount: 6,
                        physics: NeverScrollableScrollPhysics(),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 8,
                          crossAxisSpacing: 8,
                          mainAxisExtent: 300,
                        ),
                        itemBuilder: (context, index) {
                          return Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Image.asset(
                                    imgP5,
                                    height: 200,
                                    width: 200,
                                    fit: BoxFit.cover,
                                  ),
                                  Spacer(),
                                  "Laptop 4GB/64GB".text
                                      .fontFamily(semibold)
                                      .color(darkFontGrey)
                                      .make(),
                                  5.heightBox,
                                  "\$120".text
                                      .color(redColor)
                                      .fontFamily(bold)
                                      .make(),
                                ],
                              ).box.white
                              .margin(const EdgeInsets.all(5))
                              .padding(const EdgeInsets.all(8))
                              .rounded
                              .make();
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
