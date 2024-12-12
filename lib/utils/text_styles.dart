import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sneaker_store/utils/app_colors.dart';

class HeaderText extends StatelessWidget {
  final String text;
  final double? fontSize;
  final Color? color;
  final TextAlign? textAlign;
  const HeaderText({
    super.key,
    required this.text,
    this.fontSize,
    this.color,
    this.textAlign,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: textAlign,
      text,
      style: TextStyle(
        fontSize: fontSize ?? 24.sp,
        color: color ?? AppColors.whiteColor,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
