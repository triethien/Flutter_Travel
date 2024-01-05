import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:travelvietnam/home/main_page.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';

class NewPost extends StatelessWidget {
  const NewPost({super.key});

  @override
  Widget build(BuildContext context) {
         final width = MediaQuery.of(context).size.width;
         final height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                   IconButton(onPressed: (){
                       Navigator.push(
                           context,
                            MaterialPageRoute(
                           builder: (context) => MainPage()));
                   }, icon: Image.asset("assets/image/arrowleftgrey.png")),
                   Text("Tạo bài viết mới",
                   style: TextStyle(
                    fontSize: Dimensions.font26,
                    fontWeight: FontWeight.bold
                   ),)
                ],
              ),
              SizedBox(height: Dimensions.height20,),
              Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding:
                          EdgeInsets.symmetric(horizontal: width * 0.03),
                          width: width * 0.72,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.1), // color background search
                            borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius10)),
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
                                    hintText: 'Tìm kiếm',
                                    hintStyle: TextStyle(color: Colors.grey.withOpacity(0.9))
                                  ),
                              )
                              ),
                              Image.asset("assets/image/line.png",width: Dimensions.width30,height: Dimensions.height30,),
                              Image.asset("assets/image/camera.png"),
                            ],
                          ),

                        ),
                        SizedBox(width: Dimensions.height15,),
                        Container(           
                          width: width * 0.12,
                          height: height * 0.06,
                          decoration: BoxDecoration(
                            color: AppColors.navbar,
                             borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child:  Image.asset("assets/image/prefercense.png"),
                        ),
                      ],
                    ),
                    SizedBox(height: Dimensions.height15,),
                   Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect( 
                                borderRadius: BorderRadius.circular(Dimensions.height15),
                                child: SizedBox.fromSize(
                                  size: Size.fromRadius(180),
                                  child: Image.asset("assets/image/map.png"),
                                )
                                ),
                      ],
                    ),
                    SizedBox(height: Dimensions.height20,),
                    Row(
                      children: [
                        SizedBox(width: Dimensions.width20,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Hồ Xuân Hương",
                             style: TextStyle(
                                        fontSize: Dimensions.font20,
                                        fontWeight: FontWeight.bold,
                                      ),
                            ),
                            Text("Đà Lạt - Lâm Đồng, Việt Nam",
                             style: TextStyle(color: Colors.black.withOpacity(0.7),fontSize: Dimensions.font14))
                          ],
                        ),
                      ],
                    ),
                     SizedBox(height: Dimensions.height10,),
                    Row(
                      children: [
                         SizedBox(width: Dimensions.width25,),
                        Image.asset("assets/image/location_02.png",width: 60,height: 60,fit: BoxFit.cover,),
                        SizedBox(width: Dimensions.width10,),
                        Image.asset("assets/image/location_02.png",width: 60,height: 60,fit: BoxFit.cover,),
                         SizedBox(width: Dimensions.width10,),
                        Image.asset("assets/image/location_02.png",width: 60,height: 60,fit: BoxFit.cover,),
                         SizedBox(width: Dimensions.width10,),
                        Image.asset("assets/image/location_02.png",width: 60,height: 60,fit: BoxFit.cover,),
                         SizedBox(width: Dimensions.width10,),
                        Image.asset("assets/image/location_02.png",width: 60,height: 60,fit: BoxFit.cover,)
                      ],
                    ),
                    
                    SizedBox(height: Dimensions.height10,),
                    Row(
                      children: [
                        SizedBox(width: Dimensions.width20,),
                        Text("Đánh giá",
                                 style: TextStyle(
                                            fontSize: Dimensions.font22,
                                            fontWeight: FontWeight.bold,
                                          ),),
                      ],
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemPadding: EdgeInsets.symmetric(),
                              itemBuilder: (context, _)=>Icon(Icons.star,color: AppColors.Stars,), 
                              onRatingUpdate: (rating){
                                print(rating);
                              })
                          ],
                        ),
                        SizedBox(height: 10,),
                        SizedBox(
                          width: MediaQuery.of(context).size.height *0.43,
                          child: TextFormField(
                            minLines: 2,
                            maxLines: 5,
                            keyboardType: TextInputType.multiline,
                                        style: TextStyle(fontSize: Dimensions.font18, color: Colors.black),
                                        decoration: InputDecoration(
                                            hintText: "Nhập nội dung",
                                            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                            hintStyle: TextStyle(
                                              color: Colors.black.withOpacity(0.5),
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.black, width: 2),
                                                borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15))),
                                                      ),
                                  ),
                        ),
                        SizedBox(height: 20,),
                         GestureDetector(
                          child: Container(
                            width: MediaQuery.of(context).size.height *0.43,
                            height: 45,
                            decoration: BoxDecoration(
                              color: AppColors.mainColor,
                              border: Border.all(width: 2,color: AppColors.mainColor),
                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Text("Tạo bài viết",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)), //button dang nhap voi google
                                    ],
                                  ),
                          ),
                        ),
                      ],
                    ),
                  

                    
                  
               
            ],
          ),
        ),
        ),
    )
    );
  }
}