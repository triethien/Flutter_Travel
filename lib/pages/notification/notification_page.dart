import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/notification/custom_folow.dart';
import 'package:travelvietnam/pages/notification/custom_like.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({super.key});

  @override
  Widget build(BuildContext context) {
      List newItem=["liked","follow"];
      List todayItem=["liked","follow","liked"];
      List oldItem=["follow","follow","liked"];
    return SafeArea(
      child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBar(
                    backgroundColor: Colors.transparent, elevation: 0.0,
                         leadingWidth: 30,
                         iconTheme: IconThemeData(
                         ),
                        title: Text("Thông báo",
                            style: TextStyle(
                              fontSize: Dimensions.font26,
                              fontWeight: FontWeight.bold
                            ),)   ,
                                  ),
              Text("Hôm nay",
              style:
              TextStyle(
                    fontSize: Dimensions.font24,
                    fontWeight: FontWeight.bold
                   ) ,
              ),
              SizedBox(height: 10,),
              ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: newItem.length,
                itemBuilder: (context,index){
                  return newItem[index]=="follow"?  CustomFolowNotification(): CustomLikeNotification();
        
              }
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("Tuần này",
                style:
                TextStyle(
                      fontSize: Dimensions.font24,
                      fontWeight: FontWeight.bold
                     ) ,
                ),
              ),
               ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: todayItem.length,
                itemBuilder: (context,index){
                  return todayItem[index]=="follow"?  CustomFolowNotification(): CustomLikeNotification(); // kiem tra dieu kien 
        
              }
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text("Cũ",
                style:
                TextStyle(
                      fontSize: Dimensions.font24,
                      fontWeight: FontWeight.bold
                     ) ,
                ),
              ),
               ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: oldItem.length,
                itemBuilder: (context,index){
                  return oldItem[index]=="follow"?  CustomFolowNotification(): CustomLikeNotification(); // kiem tra dieu kien 
        
              }
              ),
            ],
          ),
        ),
        ),
    )
    );
  }
}