import 'package:flutter/material.dart';
import 'package:myapp/Screens/Login/loginscreen.dart';

import '../../Widgets/uihelper.dart';

class SignUpScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController userNameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          UiHelper.CostomImage(imgurl: 'newInsta.png'),
          SizedBox(height: 30),
          UiHelper.CustomTextField(
            controller: emailController,
            text: 'Email',
            tohide: false,
          ),
          SizedBox(height: 10),
          UiHelper.CustomTextField(
              controller: passwordController, text: 'Password', tohide: true),
          SizedBox(height: 10),
          UiHelper.CustomTextField(
              controller: userNameController, text: "UserName", tohide: false),
          SizedBox(height: 30),
          UiHelper.CustomButton(buttonname: "Sign Up", callback: () {}),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',
                  style: TextStyle(fontSize: 15, color: Colors.grey)),
              UiHelper.CustomTextButton(
                  text: "Sign In",
                  callback: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  })
            ],
          )
        ],
      ),
    ));
  }
}
