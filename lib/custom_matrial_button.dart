import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/app_colors.dart';

class CustomMatrialButton extends StatelessWidget {
  const CustomMatrialButton({
    super.key,
    required this.text,
    required this.onPressed,
  });
  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Positioned(
      bottom: 22 / 812 * size.height,
      left: 16 / 375 * size.width,
      right: 16 / 375 * size.width,
      child: MaterialButton(
        onPressed: onPressed,
        color: AppColors.primaryColor,
        minWidth: size.width * 342 / 375,
        height: 60 / 812 * size.height,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30 / 812 * size.height),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: GoogleFonts.inter(
                  color: AppColors.whiteColor,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Icon(Icons.arrow_forward, color: AppColors.whiteColor),
            ],
          ),
        ),
      ),
    );
  }
}
