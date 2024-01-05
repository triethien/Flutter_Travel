import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:travelvietnam/map/map_page.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/pages/post/post_page.dart';
import 'package:travelvietnam/home/home_page.dart';
import 'package:travelvietnam/plan/plan_page.dart';
import 'package:travelvietnam/pages/chat/message_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPage();
}

class _MainPage extends State<MainPage> {
  List pages = [
    HomePage(),
    MessagPage(),
    MapPage(),
    PostPage(),
    PlanPage(),
  ];
  int currentIndex=0;
  void onTap(int index){
    setState(() {
      currentIndex = index;
    }); // thiet lap nut duoc chon tren bar
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // doi mau man hinh chinh
      body: pages[currentIndex],
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.white, // doi mau thanh nav bar
        color: AppColors.navbar,
        animationDuration: Duration(milliseconds: 300),
        onTap: onTap,
        items: [
          Image(image: AssetImage("assets/image/home.png"),
          height: 30,
          width: 30,
          color: Colors.white,
          ),
           Image(image: AssetImage("assets/image/mess.png"),
          height: 40,
          width: 40,
          ),
          Image(image: AssetImage("assets/image/plan.png"),
          height: 40,
          width: 40,
          ),
          Image(image: AssetImage("assets/image/social.png"),
          height: 40,
          width: 40,
          ),
          Image(image: AssetImage("assets/image/person.png"),
          height: 40,
          width: 40,
          ),
        ]
      ),
    );
  }
}