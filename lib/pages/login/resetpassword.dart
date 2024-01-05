import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/login/login_page.dart';
import 'package:travelvietnam/pages/login/otpreset_password.dart';

class ResetPassWord extends StatefulWidget {
  const ResetPassWord({super.key});

  @override
  State<ResetPassWord> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ResetPassWord> {
  bool passwordObscured= true;
  bool passwordObscured2= true;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/image/BackGroundLogin.png"),
        fit: BoxFit.cover
        )

      ),
        child: Scaffold(
           backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
           child: SafeArea(child: Container(
             width: double.infinity,
             padding: const EdgeInsets.all(15.0),
             child: Column(
              children: [
                Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 320, 20),
                child:    IconButton(onPressed: (){
                Navigator.push(
                         context,
                          MaterialPageRoute(
                         builder: (context) => OtpResetPassWordPage()));
              },  icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
                ),
            
           
              Image(image: AssetImage("assets/image/logo.png"),

                        ),
                        SizedBox(
                        height: 16,
                      ),
                    Text(
                          'Tạo mật khẩu mới',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                    SizedBox(
                      height: 16,
                    ),
                     Text(
                            'Mật khẩu mới của bạn phải khác với mật khẩu đã sử dụng trước đó.',
                           style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                          ),
                          ),
                    SizedBox(
                      height: 16,
                    ),
                         TextField(
                          style: TextStyle(fontSize: Dimensions.font18, color: Colors.white),
                          obscureText: passwordObscured,
                          decoration: InputDecoration(
                            helperText: 'Phải có ít nhất 8 ký tự.',
                            helperStyle: TextStyle(fontSize: Dimensions.font16,color: Colors.white.withOpacity(0.7)),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  passwordObscured= !passwordObscured;
                                });
                              }, // bat va tat hien thi mat khau
                            icon: Icon(
                              passwordObscured ?
                              Icons.visibility_off_outlined: Icons.visibility_outlined, //icon eyes
                              color: Colors.white,),
                            ),
                              labelText: "Mật khẩu",
                              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                              labelStyle: TextStyle( 
                                            color: Colors.white,
                                          ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueAccent, width: 2),
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15)),
                        )),
              ),
               SizedBox(
              height: 16,
            ),
              TextField(
                          style: TextStyle(fontSize: Dimensions.font18, color: Colors.white),
                          obscureText: passwordObscured2,
                          decoration: InputDecoration(
                            helperText: 'Cả hai mật khẩu phải trùng nhau.',
                            helperStyle: TextStyle(fontSize: Dimensions.font16,color: Colors.white.withOpacity(0.7)),
                            suffixIcon: IconButton(
                              onPressed: (){
                                setState(() {
                                  passwordObscured2= !passwordObscured2;
                                });
                              }, // bat va tat hien thi mat khau
                            icon: Icon(
                              passwordObscured2 ?
                              Icons.visibility_off_outlined: Icons.visibility_outlined, //icon eyes
                              color: Colors.white,),
                            ),
                              labelText: "Nhập lại mật khẩu",
                              contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                              labelStyle: TextStyle( 
                                            color: Colors.white,
                                          ),
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.blueAccent, width: 2),
                                  borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15)),
                        )),
              ),
            SizedBox(
              height: 4,
            ),



                            SizedBox(
                            height: 20,
                          ),

                          ElevatedButton(
                        
                          style: ElevatedButton.styleFrom(
                          primary: Color(0xFF00002F),
                          minimumSize: const Size.fromHeight(50),
                          ),
                      
                            onPressed: () {
                              Navigator.push(
                                  context,
                                    MaterialPageRoute(
                                  builder: (context) => LoginPage()));
                                },
                                child: Text(
                                  'Lưu thay đổi',
                                  style: TextStyle(color: Colors.white,fontSize: Dimensions.font18, fontWeight: FontWeight.bold),
                                ),
                                        ),
              
             ],)

           ),)
        )
        )
    );
  }
}