import 'package:cis_app/domain/models/product_model.dart';
import 'package:cis_app/resources/styles/app_colors.dart';
import 'package:cis_app/resources/widgets/app_text.dart';
import 'package:cis_app/resources/widgets/public_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../widgets/colored_circle.dart';
import '../widgets/quantity_row.dart';

class ProductDetailsPage extends StatelessWidget {
  final ProductModel product;
  const ProductDetailsPage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: AppColors.teal),
        backgroundColor: AppColors.white,
        elevation: 0.0,
        centerTitle: true,
        title: AppText(
          text: product.name,
          fz: 23.sp,
          fw: FontWeight.bold,
        ),
        actions: [
          Icon(
            Icons.badge,
            color: AppColors.teal,
            size: 30.sp,
          ),
          SizedBox(
            width: 10.w,
          )
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 10.h),
        child: Column(
          children: [
            Container(
              height: 200.w,
              width: double.infinity,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: AppColors.teal.withOpacity(0.15),
                borderRadius: BorderRadius.circular(24),
              ),
              child: Image.asset(product.image),
            ),
            SizedBox(
              height: 20.h,
            ),
            Row(
              children: [
                AppText(
                  text: product.name,
                  fz: 22.sp,
                  fw: FontWeight.bold,
                ),
                const Spacer(),
                Icon(
                  Icons.attach_money_outlined,
                  size: 22.sp,
                ),
                AppText(
                  text: product.price.toString(),
                  fz: 20.sp,
                  fw: FontWeight.bold,
                ),
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            AppText(
              text: product.description,
              fz: 16.sp,
              maxLines: 6,
              color: AppColors.grey,
              wordSpacing: 1.5,
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                AppText(
                  text: "Color",
                  fz: 22.sp,
                  fw: FontWeight.bold,
                ),
                SizedBox(width: 40.w),
                const ColoredCircle(color: Colors.black),
                SizedBox(width: 15.w),
                const ColoredCircle(color: Colors.yellow),
                SizedBox(width: 15.w),
                const ColoredCircle(color: Colors.blue),
                SizedBox(width: 15.w),
                const ColoredCircle(color: Colors.grey),
                SizedBox(width: 15.w),
                const ColoredCircle(color: Colors.teal),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              children: [
                AppText(
                  text: "Quantity",
                  fz: 22.sp,
                  fw: FontWeight.bold,
                ),
                SizedBox(width: 40.w),
                const QuantityRow()
              ],
            ),
            SizedBox(height: 40.h),
            PublicButton(
              title: "Add To Card",
              onPressed: () {},
              textColor: AppColors.black,
              color: AppColors.teal.withOpacity(0.25),
              width: 200.w,
            ),
            SizedBox(height: 20.h),
            PublicButton(
              title: "Buy Now",
              onPressed: () {},
              width: 200.w,
            ),
          ],
        ),
      ),
    );
  }
}



