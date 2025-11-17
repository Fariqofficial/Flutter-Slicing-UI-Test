import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:slicing_ui_test/features/widgets/curve_painter.dart';

part 'widgets/section.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

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
          SafeArea(
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                children: [90.verticalSpace, _SectionHeader(), _ListSection()],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.white,
        elevation: 1,
        backgroundColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.notifications, color: Colors.grey, size: 35),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.settings, color: Colors.grey, size: 35),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.person, color: Colors.grey, size: 35),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.school, color: Colors.grey, size: 35),
          ),
          BottomNavigationBarItem(
            label: "",
            icon: Icon(Icons.menu, color: Colors.grey, size: 35),
          ),
        ],
      ),
    );
  }
}
