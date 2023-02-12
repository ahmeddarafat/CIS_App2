import 'package:cis_app/domain/cubits/home/home_cubit.dart';
import 'package:cis_app/presentation/home/screen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider(create: (_) => HomeCubit()),
          ],
          child: const MaterialApp(
            title: 'CIS App 2',
            home: HomePage(),
          ),
        );
      },
    );
  }
}
