import 'package:e_mart/consts/colors.dart';
import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/consts/list.dart';
import 'package:e_mart/widgets/home_buttons.dart';
import 'package:flutter/material.dart';
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
                          )
                              .box
                              .rounded
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
                          )
                              .box
                              .rounded
                              .clip(Clip.antiAlias)
                              .margin(EdgeInsets.symmetric(horizontal: 8))
                              .make();
                        },
                      ),

                      20.heightBox,


                      // Categories buttons

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: List.generate(
                          3,
                              (index) => HomeButtons(
                            context.screenWidth * 0.3,
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
                          ),
                        ),
                      ),

                      20.heightBox, 
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