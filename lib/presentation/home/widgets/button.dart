import 'package:cis_app/resources/api_demo.dart';
import 'package:cis_app/resources/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../domain/cubits/home/home_cubit.dart';

class Button extends StatelessWidget {
  final String title;
  final FurnitureType type;
  const Button({
    super.key,
    required this.title,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return ElevatedButton(
          onPressed: () {
            cubit.chooseFurniture(type);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor:
                cubit.selected == type ? AppColors.teal : AppColors.white,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24),
                side: const BorderSide(color: AppColors.teal)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: Text(
              title,
              style: TextStyle(
                  color: cubit.selected == type
                      ? AppColors.white
                      : AppColors.teal),
            ),
          ),
        );
      },
    );
  }
}
