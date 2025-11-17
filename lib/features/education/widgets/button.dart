part of '../education_screen.dart';

class _Button extends StatelessWidget {
  final Color? backgroundColor;
  final Color? foregroundColor;
  final OutlinedBorder? shape;
  final BorderRadiusGeometry? borderRadius;
  final EdgeInsetsGeometry? padding;
  final String title;
  final TextStyle? textStyle;
  final double? fontSize;
  final double? letterSpace;
  final FontWeight? fontWeight;
  final Color? textColor;
  final Function()? onTap;
  const _Button({
    this.backgroundColor,
    this.foregroundColor,
    this.shape,
    this.borderRadius,
    this.padding,
    required this.title,
    this.textStyle,
    this.fontSize,
    this.letterSpace,
    this.fontWeight,
    this.textColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap ?? () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Colors.white,
        foregroundColor: foregroundColor ?? Colors.purple,
        shape:
            shape ??
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        padding:
            padding ?? EdgeInsets.symmetric(horizontal: 50.w, vertical: 8.h),
      ),
      child: Text(
        title,
        style:
            textStyle ??
            TextStyle(
              color: textColor ?? Colors.purple.shade900,
              fontSize: fontSize ?? 22.sp,
              letterSpacing: letterSpace ?? 8,
              fontWeight: fontWeight ?? FontWeight.bold,
            ),
      ),
    );
  }
}
