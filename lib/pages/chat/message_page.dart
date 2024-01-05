import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/big_text.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/misc/small_text.dart';
import 'package:travelvietnam/pages/chat/conversation.dart';
import 'package:travelvietnam/pages/chat/user.dart';
import 'package:travelvietnam/pages/chat/active_chat.dart';
import 'package:travelvietnam/pages/chat/chat_page.dart';
import 'package:travelvietnam/pages/notification/notification_page.dart';
import 'package:travelvietnam/pages/rankleader/ranking_board.dart';
import 'package:travelvietnam/pages/social%20network/social_network.dart';

class MessagPage extends StatefulWidget {
  const MessagPage({super.key});

  @override
  State<MessagPage> createState() => _MessagPage();
}

class _MessagPage extends State<MessagPage> {
  @override
  Widget build(BuildContext context) {
            final width = MediaQuery.of(context).size.width;
            final height = MediaQuery.of(context).size.height;
            List<ChatUsers> chatUsers=[
              ChatUsers(
                name: "Bùi Quốc Triệu", 
                messageText: "Đi Đà Lạt thôi mày ơi", 
                imageURL: "assets/image/user_1.jpg", 
                time: "1 ngày"),
                ChatUsers(
                name: "Hứa Hoàng Tiến Đạt", 
                messageText: "Chuẩn bị báo cáo chưa bạn", 
                imageURL: "assets/image/user_2.jpg", 
                time: "2 ngày"),
                ChatUsers(
                name: "Tô Vĩnh Thành", 
                messageText: "Đi cafe không bạn tui", 
                imageURL: "assets/image/user_3.jpg", 
                time: "2 ngày"),
                ChatUsers(
                name: "Nguyễn Thanh Tuyến", 
                messageText: "Bắn PUBG không mày", 
                imageURL: "assets/image/user_4.jpg", 
                time: "1 tuần"),
                ChatUsers(
                name: "Võ Hữu Tính", 
                messageText: "Vô làm ván Tốc Chiến nè", 
                imageURL: "assets/image/user_5.jpg", 
                time: "4 tuần"),
                ChatUsers(
                name: "Nghĩa Võ", 
                messageText: "Tối nay thâu đêm đánh cờ TFT", 
                imageURL: "assets/image/user_6.jpg", 
                time: "12 tuần"),

            ];
    return Column(
        children: [
          Container(
            height: Dimensions.height135,
            child: SizedBox(
              child: Container(
       height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(top: Dimensions.height55,bottom: Dimensions.height30,left: Dimensions.width20,right: Dimensions.width20),
        decoration: BoxDecoration(
          color: AppColors.navbar, // mau thanh bottom navigation
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(Dimensions.radius20),
            bottomRight: Radius.circular(Dimensions.radius20)
          ),
        ),
        
        child: Row(        
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                GestureDetector(
                  child: CircleAvatar(backgroundImage: AssetImage("assets/image/avatar.jpg"),
                radius: Dimensions.radius25,
                ),
                onTap: (){
                    Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => SocialNetworkPage())); 
                },
                )            
              ],
            ),
            Column(
                children: [
                     BigText(text: "Chào, Nguyễn Hiền Triết",color: Colors.white.withOpacity(0.9),size: Dimensions.font20,),
                Row(
                  children: [
                      Icon(Icons.location_on_outlined,color: Colors.white.withOpacity(0.6),size: Dimensions.font18,),
                      SmallText(text: "Bình Dương, Việt Nam",color: Colors.grey,),
                      
                  ],
                ) // change color Text 1
                ],

            ),
                        Column( 
                            mainAxisAlignment: MainAxisAlignment.start, 
                            children: [ 
                              // gesture detector to detect the image tab 
                              GestureDetector(   
                                child: Image.asset( 
                                  'assets/image/rating.png', 
                                ), 
                                onTap: () { 
                                  Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => RankingBoard())); 
                                }, 
                              ), 
                            ], 
                          ),
                          Column( 
                            mainAxisAlignment: MainAxisAlignment.start, 
                            children: [ 
                              // gesture detector to detect the image tab 
                              GestureDetector(   
                                child: Image.asset( 
                                  'assets/image/notification.png', 
                                ), 
                                onTap: () { 
                                  Navigator.push( 
                                      context, 
                                      MaterialPageRoute( 
                                          builder: (context) => NotificationPage())); 
                                }, 
                              ), 
                            ], 
                          ),
             
          ],
        ),
      ),
            ),
          ),
    SizedBox(height: 20,),
    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                          width: width * 0.85,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1), // color background search
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                            border: Border.all(),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white,
                                offset: const Offset(1, 1),
                                blurRadius: 3,
                              ),
                            ],
                          ),
                          child: Row(
                            children: [
                             
                              Icon(
                                Icons.search_rounded,
                                color: Colors.grey,
                              ),
                              SizedBox(width: width * 0.03),
                              Expanded(child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Tìm kiếm tin nhắn',
                                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.9))
                                  ),
                              )
                              )
                            ],
                          ),
                     
                        ),
                    
                      ],
                    ),
                  ),
                  SizedBox(height: 1,),
                  ActiveChat(),
                  Expanded(child: SingleChildScrollView(
                    child:   ListView.builder(
                  itemCount: chatUsers.length,
                  shrinkWrap: true,
                  padding: EdgeInsets.only(top: 16),
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: ((context,index) { 
                   return GestureDetector(
                    onTap: (){
                        Navigator.push(
                             context,
                             MaterialPageRoute(
                             builder: (context) => ChatPage()));
                    },
                    child: ConversationList(name: chatUsers[index].name, messageText: chatUsers[index].messageText, imageURL: chatUsers[index].imageURL, isMessageRead: (index==0||index==3)?true:false, time: chatUsers[index].time));
                   }),

                ),
                  ),
                  ),
              

        ],
      );
  }
}