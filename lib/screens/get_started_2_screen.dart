import 'package:flutter/material.dart';
import 'package:sneaker_store/utils/app_colors.dart';
import 'package:sneaker_store/utils/text_styles.dart';

class GetStarted2Screen extends StatelessWidget {
  const GetStarted2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mainColor.withOpacity(0.7),
      body: const Center(
        child: HeaderText(text: "Second page"),
      ),
    );
  }
}
