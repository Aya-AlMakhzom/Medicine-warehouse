
import 'dart:ffi';
import 'package:apothecary/view/Childrens_supplies.dart';
import 'package:apothecary/view/Drawer.dart';
import 'package:apothecary/view/HomePage.dart';
import 'package:apothecary/view/Skin_care.dart';
import 'package:apothecary/view/medical_planet.dart';
import 'package:apothecary/view/medicines.dart';
import 'package:apothecary/view/search.dart';
import 'package:apothecary/view/shampo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class MyTapBar extends StatelessWidget {
  const MyTapBar({super.key});

  @override
  Widget build(BuildContext context) {
    final MyTapBar1 tabs=Get.put(MyTapBar1());
    return Scaffold(
      drawer: Drawerapp(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:Padding(
          padding:EdgeInsets.only(left: 55,top:8),
          child: Center(
            child:Image.asset("assets/image/photo1700768808-removebg-preview.png",height: 100,width: 100,),
          ),
        ),
        actions: [
          IconButton(onPressed: (){
            showSearch(context: context, delegate: search());
          }, icon: Icon(Icons.search, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_outlined, color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_cart_sharp,color:Colors.white,)),
        ],
        bottom:TabBar(
          controller: tabs.controller,
          isScrollable: true,
          tabs:tabs.myTabs,

        ),
      ),
      body: TabBarView(
        controller: tabs.controller,
        //استدعاء لفتح كل صفحة من tapBar
        children: [
          HomePage(),
          medicines(),
          shampo(),
          medical_planet(),
          Childrens_supplies(),
          Skin_care(),
        ],
      ),
      bottomNavigationBar:BottomAppBar(
        notchMargin: 5.0,
        shape: CircularNotchedRectangle(),
        color: Colors.blue,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(padding: EdgeInsets.only(left: 10.0),
              child: Column(

                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.telegram,color: Colors.greenAccent), onPressed: () {  },),
                  Text("تواصل",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(right: 40.0,top: 10.0,bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.dashboard_rounded,color: Colors.greenAccent), onPressed: () {  },),
                  Text("الطلبات",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
            Padding(padding: EdgeInsets.only(left: 40.0,top:10.0,bottom: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.shopping_cart,color: Colors.greenAccent), onPressed: () {  },),
                  Text("السلة",style: TextStyle(color: Colors.white),)
                ],
              ),),
            Padding(padding: EdgeInsets.only(left: 10.0,right: 10.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(icon: Icon(Icons.favorite,color: Colors.greenAccent), onPressed: () {  },),
                  Text("المفضلة",style: TextStyle(color: Colors.white),)
                ],
              ),),

          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.to(HomePage());
        },
        child: Icon(Icons.home,size: 40,),
        foregroundColor: Colors.greenAccent,
      ),
    );
  }
}
class MyTapBar1 extends GetxController with SingleGetTickerProviderMixin{
  late TabController controller;
  late ScrollController scrollController;

  @override
  void onInit(){
    controller=TabController(length:7, vsync: this);
    scrollController=ScrollController();
    super.onInit();
  }
  @override
  void onClose() {
    controller.dispose();
    scrollController.dispose();
    super.onClose();

  }
  final List<Tab> myTabs =<Tab>[
    Tab(
      text: "الواجهة الرئسية",
    ),
    Tab(
      text: "الادوية",
    ),

    Tab(
      text: " حقن",
    ),

    Tab(
      text: "اعشاب طبية ",
    ),
    Tab(
      text: "متممات غذائية",
    ),
    Tab(
      text: " مسكنات" ,
    ),

  ];

}