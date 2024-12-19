import 'package:flutter/material.dart';

class UiHelper {
  static CustomTextButton(
      {required String text, required VoidCallback callback}) {
    return TextButton(
      onPressed: () {
        callback();
      },
      child: Text(
        text,
        style: TextStyle(fontSize: 12, color: Colors.blue),
      ),
    );
  }

  static CustomTextField({
    required TextEditingController controller,
    required String text,
    required bool tohide,
  }) {
    return Container(
        height: 50,
        width: 343,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(5),
          color: Color(0XFF121212),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: TextField(
            controller: controller,
            obscureText: tohide,
            decoration: InputDecoration(
              hintText: text,
              hintStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.normal,
                  color: Colors.white),
              border: InputBorder.none,
            ),
          ),
        ));
  }

  static CostomImage({required String imgurl}) {
    return Image.asset("assets/images/$imgurl");
  }

  static CustomButton(
      {required String buttonname, required VoidCallback callback}) {
    return SizedBox(
      height: 45,
      width: 343,
      child: ElevatedButton(
          onPressed: () {
            callback();
          },
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5))),
          child: Text(buttonname,
              style: TextStyle(fontSize: 14, color: Colors.white))),
    );
  }
}
