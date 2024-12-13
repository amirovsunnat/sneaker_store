import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sneaker_store/utils/app_images.dart';

class GetStarted4Screen extends StatelessWidget {
  const GetStarted4Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1483C2),
      body: Stack(
        children: [
          Positioned(
              top: 116.h,
              left: 27.w,
              child: SvgPicture.asset(
                AppImages.screen4Logo1SvgPath,
              )),
          Positioned(
              top: 116.h,
              right: 26.w,
              child: SvgPicture.asset(AppImages.smileSvgPath)),
          Positioned(
              top: 375.h,
              left: 52.w,
              child: SvgPicture.asset(
                "assets/svgs/screen4UnderSneaker.svg",
              )),
          Positioned(
              top: 130.h, child: Image.asset(AppImages.sneaker4Screen4Path)),
          Positioned(
              top: 436.h, child: Image.asset(AppImages.vector1VectorPath)),
          Positioned(
              top: 436.h,
              left: 30.w,
              right: 30.w,
              child: Text(
                "Let’s Start Journey With Nike",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFEBEBEB),
                  fontSize: 24.sp,
                  fontFamily: "Releway",
                ),
              )),
          Positioned(
              top: 536.h,
              left: 30.w,
              right: 30.w,
              child: Text(
                "Smart, Gorgeous & Fashionable Collection Explor Now",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: const Color(0xFFEBEBEB),
                  fontSize: 16.sp,
                  fontFamily: "Poppins",
                ),
              )),
          Positioned(
              bottom: 40.h,
              right: 20.w,
              left: 20.w,
              child: SizedBox(
                  width: double.infinity,
                  height: 50.h,
                  child:
                      ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom( backgroundColor:  Colors.white), child: const Text("Next")))),
        ],
      ),
    );
  }
}
