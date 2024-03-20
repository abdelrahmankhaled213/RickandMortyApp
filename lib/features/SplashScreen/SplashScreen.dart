import 'package:ecommerce_app/core/Utills/styles.dart';
import 'package:ecommerce_app/features/SplashScreen/fun.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _HomeScreenViewState();
}
class _HomeScreenViewState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    waitSplash(context);
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/Images/Group 34010.png",height: 100,width: 125,),
               SizedBox(width: 10),
            Text("Stylish",style: Styles.LibreCaskonpink40bold),
              ]
          ),
        ),
      )
    );
  }
}