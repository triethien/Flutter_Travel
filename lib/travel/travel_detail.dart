import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class TravelDetail extends StatelessWidget {
  const TravelDetail({super.key});

  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;
        final height = MediaQuery.of(context).size.height;
 List RandomImages=[
    'https://pbs.twimg.com/media/D8dDZukXUAAXLdY.jpg',
    'https://pbs.twimg.com/profile_images/1249432648684109824/J0k1DN1T_400x400.jpg',
    'https://i0.wp.com/thatrandomagency.com/wp-content/uploads/2021/06/headshot.png?resize=618%2C617&ssl=1',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTaOjCZSoaBhZyODYeQMDCOTICHfz_tia5ay8I_k3k&s'
    'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg', 
 ];
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Container(
               width: double.infinity,
               height: 400,
                       decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(Dimensions.height45),bottomRight: Radius.circular(Dimensions.height45)
                              
                              ),
                              image: DecorationImage(
                                image: AssetImage("assets/image/location_09.png"),
                                  fit: BoxFit.cover,)
              ),
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
                                    IconButton(onPressed: (){}, 
                                    icon: Icon( 
                                    Icons.bookmark_border, //icon eyes
                                    color: Colors.white,),),
                     
                       ],
                        title: Row(       
                         children: [
                          Image.asset("assets/image/mediumstars.png")

                         ],
                      ),
                    ),
                   const Spacer(),              
                          Row(
                          //  mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                            SizedBox(width: Dimensions.width30,),
                              Column(
                                crossAxisAlignment:CrossAxisAlignment.start ,
                                children: [
                                  Text("Phố Cổ Hội An",
                                   style: TextStyle(
                                        fontSize: Dimensions.font20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                      ),),
                                  Row(
                                    children: [
                                      Icon(Icons.location_on_rounded,color: AppColors.Orange,size:Dimensions.font16 ,),
                                      SizedBox(width: Dimensions.width5,),
                                        Text("Quảng Nam, Việt Nam",
                                        style: TextStyle(
                                           color: Colors.white,
                                           fontSize: Dimensions.font12
                                        ),),
                                    ],
                                  )
                                ],
                              ),
                          
                              SizedBox(width: Dimensions.width50,),
                              Row(
                                children: [
                                  SizedBox(
                                child: Container(
                                  width: Dimensions.width50,
                                  decoration: BoxDecoration(
                                    color: Colors.white.withOpacity(0.8),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Text("+",style: TextStyle(
                                          fontSize: Dimensions.font12,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                        Text("190",style: TextStyle(
                                          fontSize: Dimensions.font12,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                               SizedBox(width: Dimensions.width10,),
                                  Container(
                                    child: Row(
                                      children: [
                                        for (int i =0;i< RandomImages.length;i++)
                                        Align(
                                          widthFactor: 1,
                                          child: CircleAvatar(
                                            radius: 13,
                                            backgroundImage: NetworkImage(RandomImages[i]),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  
                                ],
                              )
                             
                            ],
                          ),
                           SizedBox(height: Dimensions.width20,)
                ],
              ),
              
            ),
            SizedBox(height: Dimensions.height20,),
            Expanded(child: Column(
              children: [
                SingleChildScrollView(
                  child: Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.height *0.44,
                      child: Text("Phố cổ Hội An là một thành phố nổi tiếng của tỉnh Quảng Nam, gần như nguyên vẹn với hơn 1000 di tích kiến trúc từ phố xá, nhà cửa, hội quán, đình, chùa, miếu, giếng cổ… Khi du lịch Hội An, du khách nên chọn thời điểm khoảng tháng 2 – tháng 4 hàng năm bởi đó là lúc Hội An chiều lòng khách du lịch nhất. Trời ít mưa, không có nắng oi bức như mùa hè, khí hậu dễ chịu, không gian thoáng đãng.",
                      style: TextStyle(color: AppColors.detail,fontSize: Dimensions.font16),
                      textAlign: TextAlign.justify,),
                    ),
                    SizedBox(height: Dimensions.height20,),
                         GestureDetector(
                              child: Container(
                                width: MediaQuery.of(context).size.height *0.43,
                                height: 45,
                                decoration: BoxDecoration(
                                  color: AppColors.mainColor,
                                  border: Border.all(width: 2,color: AppColors.mainColor),
                                  borderRadius: BorderRadius.circular(Dimensions.radius15),
                                ),
                                child: ElevatedButton(   
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.mainColor, // color button dang nhap
                              ),                         
                                child: Text(                                
                                  "Tạo kế hoạch",                                 
                                  style: TextStyle(color: Colors.white, fontSize: Dimensions.font18, fontWeight: FontWeight.bold),),
                                onPressed: () {
                                               //Navigator.push(
                                               //context,
                                               //MaterialPageRoute(
                                               //builder: (context) => MainPage()));
                                },
                                ),
                                      
                              ),
                            ),
                             SizedBox(height: Dimensions.height20,),
                             SizedBox(
                              width:MediaQuery.of(context).size.height *0.43, 
                              child: Divider(height: Dimensions.height20, )),
                            SizedBox(
                               width:MediaQuery.of(context).size.height *0.43, 
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("Bình luận (190)",style: TextStyle(
                                          fontSize: Dimensions.font14,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                  Row(
                                    children: [
                                      Text("Chia sẻ",style: TextStyle(
                                          fontSize: Dimensions.font14,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      SizedBox(width: 10,),
                                      Image.asset("assets/image/share.png")
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: Dimensions.height30,),
                           Container(
                              padding:
                              EdgeInsets.symmetric(horizontal: width * 0.03),
                              width: width * 0.85,
                              height: height * 0.06,
                              decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.1), // color background search
                                borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius20)),
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
                                     Image.asset("assets/image/smile.png"),
                                  Image.asset("assets/image/line.png",width: Dimensions.width30,height: Dimensions.height30,),
                                  Image.asset("assets/image/camera.png"),
                              SizedBox(width: width * 0.03),
                              Expanded(child: TextField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    hintText: 'Viết bình luận',
                                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.9))
                                  ),
                              )
                              ),
                              Image.asset("assets/image/send.png"),
                            ],
                          ),

                        ),
                  ],
                ),
                )
                
              ],
            ),
            
            ),
            
          ],
        ),
      ),
    );
  }
}