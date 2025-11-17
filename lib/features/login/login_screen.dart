import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slicing_ui_test/features/widgets/curve_painter.dart';
import 'package:slicing_ui_test/route/app_route.dart';

part 'widgets/custom_textfield.dart';
part 'widgets/section.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          SizedBox(
            height: 120,
            width: double.infinity,
            child: CustomPaint(painter: CurvePainter()),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              children: [
                70.verticalSpace,
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Lorem ipsum",
                    style: TextStyle(
                      fontSize: 28.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                20.verticalSpace,
                _CustomTextField(hintText: "Name"),
                16.verticalSpace,
                _CustomTextField(hintText: "Email"),
                16.verticalSpace,
                _CustomTextField(hintText: "Password", obscureText: true),
                30.verticalSpace,
                _RememberSection(),
                40.verticalSpace,
                _ButtonSignUpSection(
                  title: "Sign Up",
                  onTap: () => Navigator.pushNamed(context, AppRoute.dashboard),
                  backgroundColor: Colors.purple.shade900,
                  textColor: Colors.white,
                  fontSize: 18.sp,
                  letterSpace: 1,
                ),
                40.verticalSpace,
                Text(
                  "Lorem ipsum dolor sit amet?",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.grey.shade400,
                  ),
                ),
                Text(
                  "New password",
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: Colors.purple.shade900,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
