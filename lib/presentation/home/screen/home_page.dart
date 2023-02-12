import 'package:cis_app/resources/api_demo.dart';
import 'package:cis_app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/cubits/home/home_cubit.dart';
import '../widgets/button.dart';
import '../widgets/image_card.dart';
import '../widgets/product_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(
          // backgroundColor: AppColors.teal,
          ),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: AppColors.teal,
        actions: [
          IconButton(
            onPressed: () {
              // todo: search button
            },
            icon: const Icon(Icons.search),
          ),
          const CircleAvatar(
            backgroundColor: AppColors.black,
          ),
        ],
      ),
      body: Stack(
        children: [
          Container(
            height: 250.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: AppColors.teal,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(64),
                  bottomRight: Radius.circular(64)),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Text(
                  "Explore",
                  style: TextStyle(
                    fontSize: 28.sp,
                    fontWeight: FontWeight.bold,
                    color: AppColors.white,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  height: 200.h,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemCount: images.length,
                    itemBuilder: (_, index) {
                      return ImageCard(
                        index: index,
                      );
                    },
                    separatorBuilder: (_, __) {
                      return SizedBox(
                        width: 25.w,
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Button(
                      title: "Chairs",
                      type: FurnitureType.chairs,
                    ),
                    Button(
                      title: "Sofa",
                      type: FurnitureType.sofa,
                    ),
                    Button(
                      title: "Tables",
                      type: FurnitureType.talbes,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                Expanded(
                  child: GridView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: product.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20.h,
                        crossAxisSpacing: 20.w,
                        childAspectRatio: 2 / 3),
                    itemBuilder: (_, int index) {
                      return ProductCard(index: index);
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
