import '../../../domain/cubits/home/home_cubit.dart';
import '../../../resources/styles/app_colors.dart';
import '../../../resources/widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QuantityRow extends StatelessWidget {
  const QuantityRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      builder: (context, state) {
        var cubit = HomeCubit.get(context);
        return Container(
          width: 130.w,
          padding: EdgeInsets.symmetric(horizontal: 2.w),
          decoration: BoxDecoration(
              color: AppColors.teal.withOpacity(0.15),
              borderRadius: BorderRadius.circular(64)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircalurButton(
                icon: Icons.add,
                onPressed: () {
                  cubit.increaseQuantity();
                },
                hero: "btn1",
              ),
              AppText(
                text: cubit.qunatity.toString(),
                fz: 24.sp,
                fw: FontWeight.bold,
              ),
              CircalurButton(
                icon: Icons.remove,
                onPressed: () {
                  cubit.decreaseQuantity();
                },
                hero: "btn2",
              ),
            ],
          ),
        );
      },
    );
  }
}

class CircalurButton extends StatelessWidget {
  final IconData icon;
  final void Function()? onPressed;
  final String hero;
  const CircalurButton(
      {super.key, required this.icon, this.onPressed, this.hero = "default"});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 35.h,
      width: 35.h,
      child: FittedBox(
        child: FloatingActionButton.small(
          heroTag: hero,
          onPressed: onPressed,
          backgroundColor: AppColors.teal,
          child: Icon(icon),
        ),
      ),
    );
  }
}
