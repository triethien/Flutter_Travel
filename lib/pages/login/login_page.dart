import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/home/main_page.dart';
import 'package:travelvietnam/pages/login/register_page.dart';
import 'package:travelvietnam/pages/login/send_introduction_view.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<LoginPage> {
  bool passwordObscured= true;
  //final FirebaseAuthService _auth = FirebaseAuthService();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  bool rememberUser = false;
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
                          'Đăng nhập',
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
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(checkColor: Colors.white,
                      activeColor:  Colors.blue[800],
                      side: BorderSide(
                        color: Colors.grey, // mau border checkbox
                        width: 2,
                      ),
                      value: rememberUser, onChanged: (value)
                      {
                        setState(() {
                          rememberUser = value!;
                        });
                      }),
                      Text("Nhớ tài khoản",
                      style: TextStyle(fontSize: Dimensions.font14,color: Colors.white,),)
                      
                    ],
                  ),
                  TextButton(onPressed: (){
                     Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => SendIntroductionView()));
                  }, child: Text("Quên mật khẩu ?",
                  style: TextStyle(fontSize: Dimensions.font14, color: AppColors.textColor1,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.textColor1,
                  ),))
                ],
              ),
               SizedBox(
                          height: 15,),
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
                                child: Text(                                
                                  "Đăng nhập",                                 
                                  style: TextStyle(color: Colors.white, fontSize: Dimensions.font18, fontWeight: FontWeight.bold),),
                                onPressed: () {
                                     Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => MainPage()));
                                }
                                ),
                          ),
                        ),
                         SizedBox(
                          height: 20,),
                        Text(
                          '━━━━━━━━━━━  Hoặc  ━━━━━━━━━━━',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: Dimensions.font16,
                          ),
                        ),
                         SizedBox(
                          height: 20,),
                        GestureDetector(
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              border: Border.all(width: 2,color: Colors.blue),
                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        FontAwesomeIcons.google,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text("Sign in with Google",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)), //button dang nhap voi google
                                    ],
                                  ),
                          ),
                        ),
                         SizedBox(
                          height: 20,),
                         GestureDetector(
                          child: Container(
                            width: double.infinity,
                            height: 45,
                            decoration: BoxDecoration(
                              color: Colors.blue[800],
                              border: Border.all(width: 2,color: Colors.blue),
                              borderRadius: BorderRadius.circular(Dimensions.radius15),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                                    children: const [
                                      Icon(
                                        FontAwesomeIcons.facebook,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Text("Sign in with Facebook",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 18,
                                              fontWeight: FontWeight.w500)), // button dang nhap voi fb
                                    ],
                                  ),
                          ),
                        ),
              
               Padding(
                            padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
                            child: RichText(
                              text: TextSpan(
                                  text: "Bạn chưa có tài khoản ? ",
                                  style: TextStyle(color: Color(0xFFBBBBBB), fontSize: Dimensions.font14),
                                  children: <TextSpan>[
                                    TextSpan(
                                        recognizer: TapGestureRecognizer()
                                          ..onTap = () {
                                            Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) => RegisterPage()));
                                          },
                                        text: "Đăng ký ngay",
                                        style: TextStyle(
                                            decoration: TextDecoration.underline, // dau gach chan
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
 /* void _signIn() async {

    String email = _emailController.text;
    String password = _passController.text;

    User? user = await _auth.signInWithEmailAndPassword(email, password);

    if (user!= null){
      print("User is successfully signedIn");
      Navigator.pushNamed(context, "/home");
    } else{
      print("Some error happend");
    }

  }*/
}