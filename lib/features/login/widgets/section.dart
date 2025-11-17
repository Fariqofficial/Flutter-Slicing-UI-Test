part of '../login_screen.dart';

class _RememberSection extends StatelessWidget {
  final bool? value;
  final Function(bool?)? onChanged;
  final Color? checkColor;
  const _RememberSection({this.value = true, this.onChanged, this.checkColor});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              Checkbox(
                value: value,
                onChanged: onChanged,
                checkColor: checkColor ?? Colors.deepPurple,
              ),
              4.horizontalSpace,
              Text(
                "Remember",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Text(
            "Lorem ipsum?",
            style: TextStyle(
              fontSize: 18.sp,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
          ),
        ),
      ],
    );
  }
}

class _ButtonSignUpSection extends StatelessWidget {
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
  const _ButtonSignUpSection({
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
