import 'package:cis_app/domain/models/product_model.dart';
import 'package:cis_app/resources/styles/app_colors.dart';
import 'package:cis_app/resources/widgets/app_text.dart';
import 'package:cis_app/presentation/home/widgets/button.dart';
import 'package:cis_app/resources/widgets/public_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ColoredCircle extends StatelessWidget {
  final Color color;
  const ColoredCircle({
    super.key,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 25.h,
        width: 25.h,
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
          border: Border.all(color: AppColors.white, width: 2),
          boxShadow: const [
            BoxShadow(color: Colors.grey, blurRadius: 3, offset: Offset(0, 5)),
          ],
        ),
      ),
    );
  }
}
