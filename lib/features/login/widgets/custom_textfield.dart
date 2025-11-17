part of '../login_screen.dart';

class _CustomTextField extends StatelessWidget {
  final bool obscureText;
  final String? hintText;
  final double? hintFontSize;
  final Color? hintTextColor;
  final InputBorder? enabledBorder;
  final InputBorder? focusedBorder;
  final EdgeInsetsGeometry? contentPadding;
  const _CustomTextField({
    this.obscureText = false,
    this.hintText,
    this.hintFontSize,
    this.hintTextColor,
    this.enabledBorder,
    this.focusedBorder,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText ?? "Name",
        hintStyle: TextStyle(
          fontSize: hintFontSize ?? 20.sp,
          color: hintTextColor ?? Colors.black,
          fontWeight: FontWeight.bold,
        ),
        enabledBorder:
            enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(color: Colors.grey.shade300, width: 1),
            ),
        focusedBorder:
            focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(color: Colors.orange.shade700, width: 1),
            ),
        contentPadding:
            contentPadding ??
            EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
      ),
    );
  }
}
