import 'package:flutter/material.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/chat/chat_page.dart';
import 'package:travelvietnam/widgets/custom_button.dart';

class BodySocialPage extends StatefulWidget {
  const BodySocialPage({super.key});

  @override
  State<BodySocialPage> createState() => _BodySocialPage();
}

class _BodySocialPage extends State<BodySocialPage> {
  bool follow=true;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 50),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(width: 5,color: Colors.white),
              borderRadius: BorderRadius.circular(100),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.6),
                  blurRadius: 10,
                  spreadRadius: 2,
                  offset: Offset(0, 3),
                )
              ]
            ),
            child: InstaImageViewer(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.asset("assets/image/user_1.jpg"),
              ),
            ),
            
          ),
          SizedBox(height: Dimensions.height10,),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
             Text("Bùi Quốc Triệu", 
                  style:
                TextStyle(
                      fontSize: Dimensions.font26,
                      fontWeight: FontWeight.bold
                     ) ,
                  
                  ),
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.location_on_outlined,
                        size: 20, 
                        color: Colors.black.withOpacity(0.4)),
                           Text("Bình Dương, Việt Nam", 
                            style:
                          TextStyle(
                              fontSize: Dimensions.font14,
                              fontWeight: FontWeight.bold,
                              color: Colors.black.withOpacity(0.4)
                       ) ,
                    
                        ),
            ],
          ),
          SizedBox(height: Dimensions.height10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                          buildStatColumn("3979", "Người theo dõi"),
                          buildStatColumn("150", "Đang theo dõi"),
                          buildStatColumn("121", "Bài viết mới ")
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomButton(height: 40,width: 120,
                color: follow==false?primary:form,
                textColor: follow==false?Colors.black:mainText,
                onTap: (){
                    setState(() {
                  follow=!follow;
                });
          }, text: "Theo dõi"),
          SizedBox(width: 20,),
          CustomButton(height: 40,width: 120,
                color: form,
                textColor:mainText,
            onTap: (){
                 Navigator.push(
                              context,
                              MaterialPageRoute(
                              builder: (context) => ChatPage()));
          }, text: "Nhắn tin")
            ],
          ),
      
          
        ],
      ),
    );
  }
}
Column buildStatColumn(String value, String title){
  return Column(
    children: [
      Text(
        value,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
      Text(
        title,
         style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.bold,
          color: Colors.grey[500]
        ),

      ),
    ],
  );
}