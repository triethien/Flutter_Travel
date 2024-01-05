import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/misc/small_text.dart';

class ExpandableTextWidget extends StatefulWidget {
  final String text;
  const ExpandableTextWidget({super.key, 
  required this.text});

  @override
  State<ExpandableTextWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ExpandableTextWidget> {
  late String firstHalf;
  late String secondHalf;

  bool hiddenText=true;

  double textHeight= Dimensions.screenHeight/5.63+80; // do dai hien thi dong text noi dung dia diem du lich

  @override
  void initState(){
    super.initState(); 
    if(widget.text.length>textHeight){
      firstHalf = widget.text.substring(0,textHeight.toInt());
      secondHalf = widget.text.substring(textHeight.toInt()+1,widget.text.length);
      //kiem tra do dai hien thi cau text
    }else{
      firstHalf=widget.text;
      secondHalf="";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: secondHalf.isEmpty?SmallText(color: AppColors.textColor1, size: Dimensions.font16, text: firstHalf): Column(
        children: [
          SmallText(height: 1.8, color: AppColors.textColor1, size:Dimensions.font16,text: hiddenText?(firstHalf+"..."):(firstHalf+secondHalf)),
          InkWell(
            onTap: (){
              setState(() {
                hiddenText=!hiddenText;
              });
            },
            child: Row(
              children: [
                SmallText(text: "Show more",color: AppColors.mainColor,), // doi mau cho text show more
                Icon(hiddenText?Icons.arrow_drop_down:Icons.arrow_drop_up,color: AppColors.mainColor,) // change color arrow behind show more text, thay doi up dow arrow khi click show more

              ],
            ),
          )
        ],
      ),
    );
  }
}