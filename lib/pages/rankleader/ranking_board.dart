import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class RankingBoard extends StatelessWidget {
  const RankingBoard({super.key});

  @override
  Widget build(BuildContext context) {
    
  return Container(
    child: Scaffold(
       backgroundColor: AppColors.mainColor,
  
      body: SingleChildScrollView(
        child: SafeArea( 
          child: 
           Container(
            width: double.infinity,
             padding: const EdgeInsets.all(10.0),
             child: Column(
              children: [
                AppBar(
                  backgroundColor: Colors.transparent, elevation: 0.0,
                       leadingWidth: 30,
                       iconTheme: IconThemeData(
                        color: Colors.white,
                       ),
                       centerTitle: true,
                       actions: [
                        Image.asset("assets/image/question.png"),
                       ],
                ),

                   Image(image: AssetImage("assets/image/ImageRank.png"),

                        ),
                  Text(
                    "BẢNG XẾP HẠNG",
                    style: TextStyle(
                        fontSize: Dimensions.font26,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
        ),
                  ),
                  Container(
                    margin: EdgeInsets.all(Dimensions.width20),
                    child: SizedBox(
                      height: 320,
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemBuilder: (context,index){
                          return ListTile(
                            title: Row(
                              children: [
                                ClipRRect(
                                borderRadius: BorderRadius.circular(Dimensions.height10),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(24),
                                  child: Image.asset("assets/image/avatar.jpg"),
                                )
                                ),
                                 SizedBox(
                                    width: Dimensions.width25,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                        Text(
                                    "Nguyễn Hiền Triết",
                                     style:
                                        TextStyle(
                                            fontSize: Dimensions.font14,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white
                                    ) ,
                                  ),
                                  SizedBox(height: Dimensions.height5,),
                                    Text(
                                    "Bình Dương",
                                     style:
                                        TextStyle(
                                            fontSize: Dimensions.font14,              
                                            color: Colors.white.withOpacity(0.7)
                                    ) ,
                                  )
                                    ],
                                  ),
                                
                              ],
                            ),
                            leading: Text("${index+1}",
                             style:
                                TextStyle(
                                    fontSize: Dimensions.font16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white
                            ) ,),
                            trailing: Text("${(200000/(index+1)).toString().substring(0,5)}",
                               style:
                          TextStyle(
                              fontSize: Dimensions.font12,
                              color: Colors.white
                       ) ,
                            ) ,
                          );
                        }, 
                        separatorBuilder: (context,index)=>Divider(thickness: 1, color: AppColors.mainColor,), 
                        itemCount: 10),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround ,
                    children: [ 
                      SizedBox(width: Dimensions.width80,),
                      Text( 
                                  "Địa điểm yêu thích",
                                     style:
                                        TextStyle(
                                            fontSize: Dimensions.font14,              
                                            color: Colors.white
                                    ) ,
                                  ),
                                  SizedBox(width: Dimensions.width30,),
                               Icon(Icons.arrow_forward_ios,color: Colors.white,size: Dimensions.height15,),    
                    ],
                  ),
              SizedBox(height: Dimensions.height20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                   ClipRRect(
                                borderRadius: BorderRadius.circular(Dimensions.height15),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(Dimensions.radius80),
                                  child: Image.asset("assets/image/rank_01.png"),
                                )
                                ),
                   SizedBox(width: Dimensions.width20,),
                   ClipRRect(
                                borderRadius: BorderRadius.circular(Dimensions.height15),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(Dimensions.radius80),
                                  child: Image.asset("assets/image/rank_02.png"),
                                )
                                ),
                ],
              )
              ],
              
             ),
        )),
      ),
    ),
  );
  }
}