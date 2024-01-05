import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/chat/chat_sample.dart';
import 'package:travelvietnam/pages/chat/chatbottom_sheet.dart';

class ChatPage extends StatelessWidget {
  const ChatPage ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: Padding(
          padding: EdgeInsets.only(top: 5),
          child: AppBar(
            leadingWidth: 30,
            title: Row(children: [
              ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset("assets/image/user_1.jpg", // hinh dai dien trong page
                    height: 45,
                    width: 45,
                    ),
                    
                  ),
                  Padding(padding: EdgeInsets.only(left: 10),
                  child: 
                  Text("Bùi Quốc Triệu",
                  style: TextStyle(
                          fontSize: Dimensions.font18,
                          fontWeight: FontWeight.bold
                        ),
                  ),
                  )
            ],
            ),
            actions: [
              Padding(padding: EdgeInsets.only(right: 25),
              child: Image.asset("assets/image/phone.png"),
              ),
               Padding(padding: EdgeInsets.only(right: 25),
              child: Image.asset("assets/image/videocall.png"),
              ),
               Padding(padding: EdgeInsets.only(right: 10),
              child: Icon(Icons.more_vert,size: 30, ),
              ),

            ],
          ),
        ),
      ),
      body: ChatSample(),
      bottomSheet: ChatBottomSheet(),
    );
  }
}