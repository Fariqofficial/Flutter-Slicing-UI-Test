import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slicing_ui_test/route/app_route.dart';

part 'widgets/circle_dots.dart';
part 'widgets/custom_clip.dart';
part 'widgets/button.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.purple.shade900),
          Positioned.fill(child: CustomPaint(painter: CustomClip())),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'EDUCATION',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 7,
                  ),
                ),
                40.verticalSpace,
                Image.asset("assets/images/books.png"),
                40.verticalSpace,
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Text(
                    'Lorem ipsum dolor sit amet,\nconsectetuer adipiscing elit,',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
                60.verticalSpace,
                _Button(
                  title: "START",
                  onTap: () => Navigator.pushNamed(context, AppRoute.login),
                ),
                40.verticalSpace,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _CircleDots(isActive: true),
                    _CircleDots(),
                    _CircleDots(),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
