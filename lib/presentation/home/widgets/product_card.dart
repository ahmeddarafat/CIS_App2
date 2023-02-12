import 'package:cis_app/presentation/product_details/screen/product_details_page.dart';
import 'package:cis_app/resources/api_demo.dart';
import 'package:cis_app/resources/styles/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../resources/widgets/app_text.dart';

class ProductCard extends StatelessWidget {
  final int index;
  const ProductCard({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductDetailsPage(
              product: product[index],
            ),
          ),
        );
      },
      child: Stack(
        children: [
          Container(
            height: 140.h,
            width: 150.w,
            padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
            decoration: BoxDecoration(
              color: AppColors.teal.withOpacity(0.15),
              borderRadius: BorderRadius.circular(24),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppText(
                  text: product[index].name,
                  fz: 18.sp,
                  fw: FontWeight.bold,
                  color: AppColors.teal,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.attach_money_outlined,
                      color: AppColors.teal,
                      size: 22.sp,
                    ),
                    AppText(
                      text: product[index].price.toString(),
                      fz: 16.sp,
                      color: AppColors.teal,
                      fw: FontWeight.bold,
                    ),
                    const Spacer(),
                    Icon(
                      Icons.star,
                      color: AppColors.teal,
                      size: 17.sp,
                    ),
                    AppText(
                      text: product[index].rate.toString(),
                      fz: 14.sp,
                      color: AppColors.teal,
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 180.h,
            width: 150.w,
            padding: EdgeInsets.only(left: 10.w, right: 10.w, top: 60.h),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(
              product[0].image,
            ),
          ),
        ],
      ),
    );
  }
}
