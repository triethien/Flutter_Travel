import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class PostDetail extends StatefulWidget {
  const PostDetail({super.key});

  @override
  State<PostDetail> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<PostDetail> {
        bool _isFavorited = false;
        bool _isSaved = true;
        int _favoriteCount = 0;
      void _toggleFavorite(){
      setState((){
        if(_isFavorited){
          _favoriteCount -= 1;
          _isFavorited =false;
        }
        else{
          _favoriteCount += 1;
          _isFavorited =true;
        }
      });
    }
        bool toggleIsFavorated(bool isSaved) {
      return !isSaved;
    }
  @override
  Widget build(BuildContext context) {
         final width = MediaQuery.of(context).size.width;
         final height = MediaQuery.of(context).size.height;
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
                  SizedBox(
                    width: MediaQuery.of(context).size.height *0.44,
                    child: AppBar(
                      backgroundColor: Colors.transparent, elevation: 0.0,
                       leadingWidth: 30,
                       iconTheme: IconThemeData(
                        color: Colors.white,
                       ),
                       centerTitle: true,
                       actions: [
                        IconButton(onPressed: (){}, 
                                    icon: Icon( 
                                    _isSaved ?
                                    Icons.bookmark_border : Icons.bookmark, //icon eyes
                                    color: Colors.white,),),
                       ],
                        title: Row(       
                         mainAxisAlignment: MainAxisAlignment.start,   
                        children: [
                         Row(
                           children: [
                  
                            //  SizedBox(width: Dimensions.width270,),                
                           ],
                           
                         ),
                       
                        ],
                      ),
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
                                        Text("Quảng Nam, Việt Nam",
                                        style: TextStyle(
                                           color: Colors.white,
                                           fontSize: Dimensions.font12
                                        ),),
                                    ],
                                  ),
                                    Row(
                                      children: [
                                         Text("314 km",
                                        style: TextStyle(
                                           color: Colors.white,
                                           fontSize: Dimensions.font12
                                        ),),
                                        Icon(Icons.location_on_rounded,color: AppColors.Orange,size:Dimensions.font16 ,),
                                      ],
                                    ),
                                    SizedBox(height: Dimensions.height10,),
                                    Row(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage:AssetImage("assets/image/avatar.jpg") ,
                                        ),
                                         SizedBox(width: Dimensions.width10,),
                                        Text("Hiền Triết",
                                        style: TextStyle(
                                           color: Colors.white,
                                           fontWeight: FontWeight.bold,
                                           fontSize: Dimensions.font16
                                        ),),
                                         SizedBox(width: Dimensions.width20,),
                                        Image.asset("assets/image/addred.png"),
                                         SizedBox(width: Dimensions.width55,),
                                        Row(
                                            children: [
                                              Container(
                                                child: IconButton(
                                                 icon: (_isFavorited
                                                ? const Icon(Icons.favorite,color: Colors.red,)
                                                : const Icon(Icons.favorite_border,color: Colors.white,)
                                                ),
                                                onPressed: _toggleFavorite, 
                                                ),
                                                
                                              ), 
                                             SizedBox(
                                                   child: Text('$_favoriteCount', style: TextStyle(
                                                        fontSize: Dimensions.font16,
                                                        color: Colors.white
                                                      ),),
                                                 ),
                                               
                                            ],
                                          ),
                                          SizedBox(width: Dimensions.width10,),
                                            Row(
                                            children: [
                                              Image.asset("assets/image/messpost.png",color: Colors.white),
                                              SizedBox(width: Dimensions.width10,),
                                              Text("180",
                                              style: TextStyle(
                                                    fontSize: Dimensions.font16,
                                                    color: Colors.white
                                                  ),),
                                            ],
                                          ),
                                      ],
                                    )
                                ],
                              ),                      
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("REVIEW PHỐ CỔ HỘI AN",style: TextStyle(
                                            fontSize: Dimensions.font16,
                                            fontWeight: FontWeight.bold,
                                          ),),
                          Image.asset("assets/image/report.png")
                        ],
                      ),
                    ),
                     SizedBox(height: Dimensions.height20,),
                    SizedBox(
                      width: MediaQuery.of(context).size.height *0.44,
                      child: Text("Phố cổ Hội An là một thành phố nổi tiếng của tỉnh Quảng Nam, gần như nguyên vẹn với hơn 1000 di tích kiến trúc từ phố xá, nhà cửa, hội quán, đình, chùa, miếu, giếng cổ… Khi du lịch Hội An, du khách nên chọn thời điểm khoảng tháng 2 – tháng 4 hàng năm bởi đó là lúc Hội An chiều lòng khách du lịch nhất. Trời ít mưa, không có nắng oi bức như mùa hè, khí hậu dễ chịu, không gian thoáng đãng.",
                      style: TextStyle(color: AppColors.detail,fontSize: Dimensions.font16),
                      textAlign: TextAlign.justify,),
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
                                  Text("Bình luận (180)",style: TextStyle(
                                          fontSize: Dimensions.font14,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                  Row(
                                    children: [
                                      Text("Chia sẻ",style: TextStyle(
                                          fontSize: Dimensions.font14,
                                          fontWeight: FontWeight.bold,
                                        ),),
                                      SizedBox(width: Dimensions.width10,),
                                      Image.asset("assets/image/share.png")
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(height: Dimensions.height20,),
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