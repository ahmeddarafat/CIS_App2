import 'app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_colors.dart';

class PublicButton extends StatelessWidget {
  final String title;
  final void Function()? onPressed;
  final double width;
  final Color color;
  final Color textColor;
  const PublicButton(
      {super.key,
      required this.title,
      this.onPressed,
      this.color = AppColors.teal,
      this.textColor = AppColors.white,
      this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
      
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            child: AppText(
              text: title,
              color: textColor,
              fw: FontWeight.bold,
              fz: 18.sp,
            )),
      ),
    );
  }
}
