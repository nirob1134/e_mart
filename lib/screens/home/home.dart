import 'package:e_mart/consts/consts.dart';
import 'package:e_mart/controller/home_controller.dart';
import 'package:e_mart/screens/cart/cart_screen.dart';
import 'package:e_mart/screens/categories/categories_screen.dart';
import 'package:e_mart/screens/home/home_screen.dart';
import 'package:e_mart/screens/profile/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {

    var controller = Get.put(HomeController());

    var navBarItem = [
      BottomNavigationBarItem(icon: Image.asset(icHome,width: 26,),label: "Home"),
      BottomNavigationBarItem(icon: Image.asset(icCategories,width: 26,),label: "Categories"),
      BottomNavigationBarItem(icon: Image.asset(icCart,width: 26,),label: "Cart"),
      BottomNavigationBarItem(icon: Image.asset(icProfile,width: 26,),label: "Account"),
    ];

    var navBody = [
      HomeScreen(),
      CategoriesScreen(),
      CartScreen(),
      ProfileScreen()
    ];

    return Scaffold(
      body: Obx(()=>  navBody.elementAt(controller.currentNavIndex.value)),
      bottomNavigationBar: Obx(()=>
         BottomNavigationBar(
           currentIndex: controller.currentNavIndex.value,
          type: BottomNavigationBarType.fixed,
            backgroundColor: whiteColor,
            selectedItemColor: redColor,
            selectedLabelStyle: TextStyle(fontFamily: bold),
            items: navBarItem,
             onTap: (value){
             controller.currentNavIndex.value =value;
             },
        ),
      ),
    );
  }
}
