import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/login/login_page.dart';
import 'package:travelvietnam/pages/login/otpreset_password.dart';

class SendIntroductionView extends StatefulWidget {
  const SendIntroductionView({super.key});

  @override
  State<SendIntroductionView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<SendIntroductionView> {
   final TextEditingController _emailController = TextEditingController();

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
                         builder: (context) => LoginPage()));
              },  icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
                ),
            
           
              Image(image: AssetImage("assets/image/logo.png"),

                        ),
                        Text(
                          'Đặt lại mật khẩu',
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
                            'Để xác minh danh tính của bạn, chúng tôi sẽ gửi mã xác minh đến địa chỉ email hoặc số điện thoại được liên kết với tài khoản của bạn.',
                           style: TextStyle(
                            color: Colors.white.withOpacity(0.8),
                            fontSize: 16,
                          ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        
                          TextField(
                            controller: _emailController,
                                      style: TextStyle(fontSize: Dimensions.font18, color: Colors.white),
                                      decoration: InputDecoration(
                                          labelText: "Nhập Email",
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                                          labelStyle: TextStyle(
                                            color: Colors.white.withOpacity(0.6),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.blueAccent.withOpacity(0.7), width: 2),
                                              borderRadius: BorderRadius.all(Radius.circular(Dimensions.radius15))),
                                                    ),
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
                                  builder: (context) => OtpResetPassWordPage()));
                                },
                                child: Text(
                                  'Gửi mã',
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
