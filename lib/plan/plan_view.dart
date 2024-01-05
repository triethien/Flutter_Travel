import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class PlanView extends StatelessWidget {
  const PlanView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: Dimensions.height10,),
            Row(
              children: [
                SizedBox(width: Dimensions.width20,),
               IconButton(onPressed: (){}, icon: Image.asset("assets/image/addplus.png")),
                SizedBox(width: Dimensions.height10,),
                 Text(
                      "Tạo kế hoạch mới",
                      style: TextStyle(
                        fontSize: Dimensions.font20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.mainColor
                      ),
                    ),
              ],
            ),
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
                         vertical:30, 
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
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
             SizedBox(width: Dimensions.width10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Chợ Nổi Cà Mau 3 ngày",
                              style: TextStyle(
                                    fontSize: Dimensions.font20,
                                    fontWeight: FontWeight.bold,
                                  ),),
                              Text("23-26, tháng 12,2022",
                              style: TextStyle(color: Colors.black.withOpacity(0.5))),

                            ],
                        ),
                        SizedBox(width: Dimensions.width80,),
                        Image.asset("assets/image/share.png"),
                   SizedBox(width: Dimensions.width10,),
                    ],)
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