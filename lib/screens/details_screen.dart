import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneaker_store/utils/app_images.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F7F9),
      appBar: AppBar(
        centerTitle: true,
        leading: Container(
          margin: EdgeInsets.all(10.w),
          height: 44.h,
          width: 44.w,
          decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40),
              )),
          child: SvgPicture.asset(
            AppImages.arrowBackSvgPath,
          ),
        ),
        title: Text(
          "Sneaker Shop",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 16.sp,
              fontFamily: "Raleway",
              fontWeight: FontWeight.w600),
        ),
        actions: [
          Container(
            margin: EdgeInsets.all(10.w),
            height: 44.h,
            width: 44.w,
            decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(40),
                )),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  AppImages.detailScreenMenuBagIconSvgPath,
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.only(left: 20),
        child: Stack(
          children: [
            Positioned(
              top: 36,
              child: const SizedBox(
                width: 250,
                child: Text(
                  "Nike Air Max 270 Essential",
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 26,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                ),
              ),
            ),
            Positioned(
                top: 108,
                child: Text(
                  "Men’s Shoes",
                  style: TextStyle(
                    color: Color(0xFF707B81),
                    fontSize: 16,
                    fontFamily: 'Raleway',
                    fontWeight: FontWeight.w500,
                  ),
                )),
            Positioned(
                top: 138,
                child: Text(
                  "\$179.39",
                  style: TextStyle(
                    color: Color(0xFF2B2B2B),
                    fontSize: 24,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                )),
            Positioned(
              top: 80,
              right: 50,
              child: SizedBox(
                width: 272.w,
                height: 340.h,
                child: Image.asset(AppImages.DetailsScreenImage1Path),
              ),
            ),
            Positioned(
                top: 300,
                child: SvgPicture.asset(AppImages.detailScreenEllips)),
            Positioned(
                top: 355,
                left: 150,
                child: SvgPicture.asset(AppImages.detailsScreenSlider)),
            Positioned(
                top: 370.h,
                child: SingleChildScrollView(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CustomContainer(
                          stringImagePath: AppImages.detailsScreenKrossovka),
                      SizedBox(
                        width: 16.w,
                      ),
                      CustomContainer(
                          stringImagePath: AppImages.detailsScreenKrossovka),
                      SizedBox(
                        width: 16.w,
                      ),
                      CustomContainer(
                          stringImagePath: AppImages.detailsScreenKrossovka),
                      SizedBox(
                        width: 16.w,
                      ),
                      CustomContainer(
                          stringImagePath: AppImages.detailsScreenKrossovka),
                      SizedBox(
                        width: 16.w,
                      ),
                    ],
                  ),
                )),
            Positioned(
                top: 450.h,
                child: SizedBox(
                  width: 335,
                  child: Text(
                    'The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything Nike........',
                    style: TextStyle(
                      color: Color(0xFF707B81),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )),
            Positioned(
                top: 530.h,
                right: 30.w,
                child: Text(
                  "Read More",
                  style: TextStyle(color: Color(0xFF0D6EFD), fontSize: 14),
                )),
            Positioned(
                top: 560.h,
                left: 50.w,
                right: 30.w,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      height: 50.h,
                      width: 50.w,
                      decoration: ShapeDecoration(
                          color: Color(0xffEBEBEC).withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(80),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(14.0),
                        child: SvgPicture.asset(AppImages.detailScreenHeart),
                      ),
                    ),
                    SizedBox(
                      width: 0.w,
                    ),
                    SizedBox(
                      height: 45.h,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          iconColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r)),
                          backgroundColor: Color(0xff0D6EFD),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset(
                              AppImages.detailScreenMenuBagIconSvgPath,
                              color: Colors.white,
                            ),
                            SizedBox(
                              width: 30.w,
                            ),
                            Text(
                              "Add to Cart",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 14.sp),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}

class CustomContainer extends StatelessWidget {
  final String stringImagePath;
  const CustomContainer({
    super.key,
    required this.stringImagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
      child: Image.asset(stringImagePath),
    );
  }
}
