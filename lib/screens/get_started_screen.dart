import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneaker_store/screens/details_screen.dart';
import 'package:sneaker_store/screens/get_started_2_screen.dart';
import 'package:sneaker_store/utils/app_colors.dart';
import 'package:sneaker_store/utils/app_images.dart';
import 'package:sneaker_store/utils/text_styles.dart';
import 'package:sneaker_store/widgets/custom_button.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor.withOpacity(0.6),
      body: Stack(
        alignment: AlignmentDirectional.centerStart,
        children: [
          Positioned(
            top: 60.h,
            left: 80.w,
            right: 80.w,
            child: const HeaderText(
              text: "Wellcome To Nike",
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            left: 80.w,
            right: 80.w,
            top: 170.h,
            child: SvgPicture.asset(
              AppImages.vector1SvgPath,
            ),
          ),
          Positioned(
            top: 260.h,
            left: 30.w,
            child: SvgPicture.asset(
              AppImages.smileSvgPath,
            ),
          ),
          Positioned(
            width: 300.w,
            top: 270.h,
            right: 0.w,
            child: Image.asset(
              AppImages.sneaker3ImagePath,
            ),
          ),
          Positioned(
            bottom: 160.h,
            right: 80.w,
            left: 80.w,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.whiteWithOpacColor,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  width: 40.w,
                  height: 5.h,
                ),
                SizedBox(width: 10.w),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  width: 20.w,
                  height: 5.h,
                ),
                SizedBox(width: 10.w),
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.orangeColor,
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  width: 20.w,
                  height: 5.h,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 100.h,
            right: 30.w,
            child: SvgPicture.asset(
              AppImages.vector2SvgPath,
            ),
          ),
          Positioned(
            left: 20.w,
            right: 20.w,
            bottom: 20.h,
            child: CustomButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const DetailsScreen(),
                  ),
                );
              },
              text: "Get Started",
            ),
          ),
        ],
      ),
    );
  }
}
