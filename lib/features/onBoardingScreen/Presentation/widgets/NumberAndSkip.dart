import 'package:ecommerce_app/core/Utills/styles.dart';
import 'package:ecommerce_app/core/database/cachehelper.dart';
import 'package:ecommerce_app/features/onBoardingScreen/Presentation/model_view/OnBoardingChange.dart';
import 'package:ecommerce_app/features/onBoardingScreen/Presentation/widgets/CustomText.rich.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class CustomRow extends StatelessWidget {
  int currentindex;
  CustomRow(
  {
    required this.currentindex
}
      );
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(
10.w
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
CustomTextRich(
  ontap: (){},
   text: '${currentindex.toString()}',
  textstyle1: Styles.Montserratblack24w700.copyWith(
    fontWeight: FontWeight.w300,
    fontSize: 18.sp,
  ),
  text2: "/${onboardingchange.length}",
  textstyle2: Styles.Montserratgrey16w300.copyWith(
        fontSize: 18.sp
    ),

),
          GestureDetector(
            onTap: ()async{
              GoRouter.of(context).pushReplacement("/SignUpView");
              await CacheHelper().setBoolean(true);
            },
            child: Text("Skip",style: Styles.Montserratblack24w700.copyWith(
              fontWeight: FontWeight.w300,
              fontSize: 18.sp
            ),),
          )
        ],
      ),
    );
  }
}