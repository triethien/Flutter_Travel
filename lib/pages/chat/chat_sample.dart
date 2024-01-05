import 'package:flutter/material.dart';
import 'package:travelvietnam/pages/chat/user.dart';

class ChatSample extends StatelessWidget {
  const ChatSample({super.key});

  @override
  Widget build(BuildContext context) {
    List<ChatMessage> messages=[
      ChatMessage(messageContent: "Thứ 6 này rãnh không", messageType: "receiver"),
      ChatMessage(messageContent: "Thứ 6 á hả, chắc rãnh đó mày ơi", messageType: "sender"),
      ChatMessage(messageContent: "Thu xếp hành lí đi bạn", messageType: "receiver"),
      ChatMessage(messageContent: "Đi đâu mà thu xếp hành lí dữ vậy ba", messageType: "sender"),
      ChatMessage(messageContent: "Đà Lạt chứ đâu nữa bạn eyyy", messageType: "receiver"),
      ChatMessage(messageContent: "Đi 3 ngày 2 đêm hả", messageType: "sender"),
      ChatMessage(messageContent: "Đúng vậy", messageType: "receiver"),
      ChatMessage(messageContent: "Đi Đà Lạt thôi mày ơi", messageType: "receiver"),
    ];
    return Stack(
      children: [
        ListView.builder(
          itemCount: messages.length,
          itemBuilder: ((context,index)
          {
            return Container(
              padding: EdgeInsets.only(left: 14,right: 14,top: 10,bottom: 10),
              child:
              Align(alignment: messages[index].messageType=="receiver"?Alignment.topLeft:Alignment.topRight,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: (messages[index].messageType=="receiver")?Colors.grey.shade200:Colors.blue[200],
                ),
                padding: EdgeInsets.all(16),
                child: Text(
                  messages[index].messageContent,style: TextStyle(fontSize: 15),
                ),
              ), ),
              
            );
          }
            )
             ),
      ],
    );
  }
}