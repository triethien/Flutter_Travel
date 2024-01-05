import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/login/login_page.dart';
import 'package:travelvietnam/home/main_page.dart';
import 'package:travelvietnam/pages/login/terms_of_use.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<RegisterPage> {
  bool passwordObscured= true;
  //FirebaseAuthService _auth = FirebaseAuthService();
  TextEditingController _nameController = new TextEditingController();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _passController = new TextEditingController();
  TextEditingController _phoneController = new TextEditingController();
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
              child: SafeArea(
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                        Image(image: AssetImage("assets/image/logo.png"),

                        ),
                        Text(
                          'Đăng ký',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                        Text(
                          'Vui lòng nhập thông tin chi tiết bên dưới để tiếp tục',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Dimensions.font16,
                          ),
                        ),
                       
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 25, 0, 20),
                          child: TextField(
                            controller: _nameController,
                            style: TextStyle(fontSize: 18, color: Colors.white),
                            decoration: InputDecoration(
                                labelText: "Tên người dùng",
                                contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                labelStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                enabledBorder: OutlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.blueAccent, width: 2),
                                    borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15))),
                                
                                    ),
                                  ),
                                ),
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                                      child: TextField(
                                        controller: _phoneController,
                                        style: TextStyle(fontSize: Dimensions.font18, color: Colors.white),
                                        decoration: InputDecoration(
                                            labelText: "Số điện thoại",
                                            contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                            labelStyle: TextStyle(
                                              color: Colors.white,
                                            ),
                                            enabledBorder: OutlineInputBorder(
                                                borderSide:
                                                    BorderSide(color: Colors.blueAccent, width: 2),
                                                borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15))),
                                    
                                                ),
                            ),
                          ),
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
                                    child: TextField(
                                      controller: _emailController,
                                      style: TextStyle(fontSize: Dimensions.font18, color: Colors.white),
                                      decoration: InputDecoration(
                                          labelText: "Email",
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                          labelStyle: TextStyle(
                                            color: Colors.white,
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.blueAccent, width: 2),
                                              borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15))),
                                      
                                              ),
                          ),
                        ),
                            TextField(
                          controller: _passController,
                          style: TextStyle(fontSize: Dimensions.font18, color: Colors.white),
                          obscureText: passwordObscured,
                          decoration: InputDecoration(
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
                          height: 30,),
                        GestureDetector(
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              color: AppColors.Button,
                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                            ),
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: AppColors.Button, // color button dang nhap
                              ),  
                                onPressed: () { 
                                    Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => MainPage()));
                                 },
                                child: Text(
                                  "Tạo tài khoản",
                                  style: TextStyle(color: Colors.white,fontSize: Dimensions.font18, fontWeight: FontWeight.bold),
                                )),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: TextSpan(
                                  text: "Bạn đồng ý với ",
                                  style: TextStyle(color: Colors.white, fontSize: Dimensions.font16),
                                  children: <TextSpan>[
                                    TextSpan(
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => TermsOfUse()));
                                          },
                                        text: "Điều khoản sử dụng và Chính sách bảo mật ",
                                        style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            color: Color(0xff3277D8), fontSize: Dimensions.font16,
                                            fontWeight: FontWeight.bold)),
                                          TextSpan(
                                            text: "của chúng tôi ",
                                            style: TextStyle(color: Colors.white, fontSize: Dimensions.font16),   
                                          )
                                    
                                    ],
                                    ),
                              ),
                            ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(0, 40, 0, 30),
                            child: RichText(
                              text: TextSpan(
                                  text: "Bạn đã có tài khoản ? ",
                                  style: TextStyle(color: Color(0xFFBBBBBB), fontSize: Dimensions.font14),
                                  children: <TextSpan>[
                                    TextSpan(
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => LoginPage()));
                                          },
                                        text: "Đăng nhập",
                                        style: TextStyle(
                                            decoration: TextDecoration.underline,
                                            color: Color(0xff3277D8), fontSize: Dimensions.font14,
                                            fontWeight: FontWeight.bold),
                                            )
                                    ]),
                              ),
                            ),
                             Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 30),
                                child: Image(
                                  image: AssetImage("assets/image/language.png"),
                                  ),
                            ),
                    

              
              
               
              
                        
                  ]
                  ),
                  
                ),
                
                ),
        )
      ),
    );
  }
}