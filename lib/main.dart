import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing_ui_test/route/app_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(393, 582),
      child: MaterialApp(
        theme: ThemeData(
          useMaterial3: false,
          textTheme: GoogleFonts.poppinsTextTheme(),
        ),
        debugShowCheckedModeBanner: false,
        title: 'Slicing UI Test',
        initialRoute: AppRoute.main,
        onGenerateRoute: AppRoute.onGenerateRoute,
      ),
    );
  }
}
