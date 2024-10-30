import 'package:flutter/material.dart';
class CostumWidget{

  static Widget black26Container(backgroundColor, textColor) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: backgroundColor
      ),
      child: Center(child: Text("data", style: TextStyle(color: textColor),)),
    );
  }


  static Widget customTextField(prefixIcon, suffixIcon) {
    return TextField(
      decoration: InputDecoration(
          suffixIcon: prefixIcon,
          prefixIcon: suffixIcon,
          // suffixIcon: Image.asset('icons/user.png', width: 5, height: 10, fit: BoxFit.contain,),
          border: OutlineInputBorder()
      ),
    );
  }


  static Widget customButton(BuildContext context, backgroundColor, textColor, text) {
    return Container(
        width: MediaQuery.of(context).size.width / 3,
        height: 50,
        decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(5)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: textColor,
                fontWeight: FontWeight.w500,
                fontSize: 18),
          ),
        ),
      );
  }
}