import 'dart:async';
import 'package:flutter/material.dart';
import 'package:travelvietnam/misc/colors.dart';
import 'package:travelvietnam/misc/dimensions.dart';
import 'package:travelvietnam/pages/login/resetpassword.dart';
import 'package:travelvietnam/pages/login/send_introduction_view.dart';

class OtpResetPassWordPage  extends StatefulWidget {
  const OtpResetPassWordPage ({super.key});

  @override
  State<OtpResetPassWordPage > createState() => _MyWidgetState();
}

class _MyWidgetState extends State<OtpResetPassWordPage > {
  bool invalidOtp = false;
  int resendTime = 30;
  late Timer countdownTimer;
  TextEditingController txt1 = TextEditingController();
  TextEditingController txt2 = TextEditingController();
  TextEditingController txt3 = TextEditingController();
  TextEditingController txt4 = TextEditingController();
  @override
  void initState() {
    startTimer();
    super.initState();
  }
   startTimer() {
    countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        resendTime = resendTime - 1;
      });
      if (resendTime < 1) {
        countdownTimer.cancel();
      }
    });
  }

  stopTimer() {
    if (countdownTimer.isActive) {
      countdownTimer.cancel();
    }
  }
  String strFormatting(n) => n.toString().padLeft(2, '0');
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
          child: SafeArea(child: 
          Container(
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
                         builder: (context) => SendIntroductionView()));
              },  icon: Icon(Icons.arrow_back,size: 30,color: Colors.white,)),
                ),
                Image(image: AssetImage("assets/image/logo.png"),
                        ),
                        Text(
                          'Xác thực OTP',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                       SizedBox(height: 20),
                           Text(
                            'Nhập mã xác minh gồm 4 chữ số nhận được',
                            style: TextStyle(fontSize: Dimensions.font18,color:Colors.white.withOpacity(1),),
                          ),
                         SizedBox(
                            height: 20,
                          ),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          myInputBox(context, txt1),
                          myInputBox(context, txt2),
                          myInputBox(context, txt3),
                          myInputBox(context, txt4),
                  ],
                ),
                 SizedBox(
                            height: 20,
                          ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text(
                      "Bạn chưa nhận được mã OTP ?",
                      style: TextStyle(fontSize: Dimensions.font18,color:Colors.white.withOpacity(0.5),),
                    ),
                    const SizedBox(width: 10),
                    resendTime == 0
                        ? InkWell(
                            onTap: () {
                              // Resend OTP Code
                              invalidOtp = false;
                              resendTime = 30;
                              startTimer();
                              //
                            },
                            child:  Text(
                              'Gửi lại mã',
                              style: TextStyle(color:Colors.white.withOpacity(0.9), fontSize: Dimensions.font18,fontWeight: FontWeight.bold),
                            ),
                          )
                        : const SizedBox()
                  ],
                ),
                SizedBox(height: 10),
                resendTime != 0
                    ? Text(
                        'Bạn có thể gửi lại mã OTP sau ${strFormatting(resendTime)} Giây(s)',
                        style: TextStyle(fontSize: Dimensions.font18,color: Colors.white.withOpacity(0.5),),
                      )
                    : const SizedBox(),
                SizedBox(height: 5),
                Text(
                  invalidOtp ? 'Mã OTP không hợp lệ !' : '',
                  style: TextStyle(fontSize: Dimensions.font18, color: AppColors.Location,fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    //
                    final otp = txt1.text + txt2.text + txt3.text + txt4.text;
                    if (otp == '2001') {
                      // Go to welcome
                      stopTimer();
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) => const ResetPassWord(),
                        ),
                      );
                    } else {
                      setState(() {
                        invalidOtp = true;
                      });
                    }
                    //
                  },
                  child: Text(
                    'Xác minh',
                    style: TextStyle(fontSize: Dimensions.font20,color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF00002F),
                    minimumSize: const Size.fromHeight(50),
                  ),
                ),
              ],
             ),
            
          )
          ),
        ),
      ),

    );
    
  }
}
Widget myInputBox(BuildContext context, TextEditingController controller) {
  return Container(
    height: 70,
    width: 60,
    decoration: BoxDecoration(
      border: Border.all(width: 2,color: Colors.blueAccent),
      borderRadius: const BorderRadius.all(
        Radius.circular(20),
      ),
    ),
    child: TextField(
      controller: controller,
      maxLength: 1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.number,
      style: TextStyle(fontSize: 42,color: Colors.white),
      decoration: InputDecoration(
        counterText: '',
        border: InputBorder.none,
        
      ),
      onChanged: (value) {
        if (value.length == 1) {
          FocusScope.of(context).nextFocus();
        }
      },
    ),
  );
}