import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class TaggedView extends StatelessWidget {
  const TaggedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 8,
              shrinkWrap: true,
              itemBuilder: (BuildContext context,int index){
                return Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                         horizontal: 18,
                         vertical: 5, 
                      ),
                      padding: const EdgeInsets.all(14),
                      height: MediaQuery.of(context).size.height *0.28,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                      //  color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                        image: AssetImage('assets/image/location_0${index+1}.png'),
                        fit: BoxFit.cover,
                        )
                      ),
                      child: Column(
                        children: [
                          const Spacer(),
                          Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SizedBox(width: Dimensions.width10,),
                        Row(
                          children: [
                            Row(
                              children: [
                                Image.asset("assets/image/heart.png", color: Colors.white),
                                SizedBox(width: Dimensions.width10,),
                                Text("67", style: TextStyle(
                                      fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.bold,
                                      color:Colors.white
                                    ),),
                              ],
                            ),
                            SizedBox(width: Dimensions.width20,),
                            Row(
                              children: [
                                Image.asset("assets/image/messpost.png", color: Colors.white),
                                SizedBox(width: Dimensions.width10,),
                                Text("120",
                                 style: TextStyle(
                                      fontSize: Dimensions.font16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),),
                              ],
                            ),
                          ],
                        ),
                        
                                ],
                                ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.height *0.44,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                            Text("Du lịch tự do không lo về giá",
                                   style: TextStyle(
                                        fontSize: Dimensions.font16,
                                        //color: Colors.black
                                      ),),
                          Row(
                            children: [
                                Text("Khám phá một vùng trời rộng lớn...",
                                   style: TextStyle(
                                        fontSize: Dimensions.font16,
                                      ),),
                                        Text("xem thêm",
                                   style: TextStyle(
                                        fontSize: Dimensions.font16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black.withOpacity(0.4)
                                      ),),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: Dimensions.height10,),
                  ],
                );
            }
              ),
            

          ],
        ),
      ),
    );
  }
}