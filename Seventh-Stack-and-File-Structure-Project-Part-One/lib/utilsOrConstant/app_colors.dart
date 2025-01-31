import 'package:flutter/material.dart';
class AppColors{
  static Color custombuttoncolor = const Color(0xffFFA451);    //<< to add 0xff FFA451

}

// Consider This is the custom_button color used in LoginScreen, may be it will be used somewhere where you think this color suit
// OR 
// Suppose you have built any application and its background color is same in multiple screens and you want to change that Colar Later on 
// Then you have to go each screen and change one by one it is better to follow this approch to change colors or images path 
// rather than defining them invidually in code that is hard job for searching and REUSIBILITY 
// THIS IS GOOD Approch to add their path here in class AppColors and accessed it through class name AppColors.custombuttoncolor,
// AppColors. Will list down all colors 

// We can use color 2 to 3 ways

// 1. Widgets/Class > Colors.RED
// 2  #hascode like Above > Color(0xffFFA451)
// 3. customized code from picker