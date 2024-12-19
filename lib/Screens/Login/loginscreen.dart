import 'package:flutter/material.dart';

import '../../Widgets/uihelper.dart';
import '../SignUp/signupscreen.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CostomImage(imgurl: "newInsta.png"),
          SizedBox(height: 20),
          UiHelper.CustomTextField(
              controller: emailController, text: "Email", tohide: false),
          SizedBox(height: 20),
          UiHelper.CustomTextField(
              controller: passwordController, text: "Password", tohide: true),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            Padding(
                padding: EdgeInsets.only(right: 25),
                child: UiHelper.CustomTextButton(
                    text: "Forgot Password?", callback: () {})),
          ]),
          SizedBox(height: 10),
          UiHelper.CustomButton(buttonname: "Login", callback: () {}),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              UiHelper.CostomImage(imgurl: "FB_logo1.jpg"),
              UiHelper.CustomTextButton(
                  text: "Login with Facebook", callback: () {})
            ],
          ),
          SizedBox(height: 10),
          Text("OR",
              style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400)),
          SizedBox(height: 10),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: [
            Text("Don't have an Account?",
                style: TextStyle(fontSize: 14, color: Colors.white)),
            UiHelper.CustomTextButton(
                text: "Sign up",
                callback: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SignUpScreen()));
                })
          ])
        ],
      ),
    ));
  }
}
