import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/app_colors.dart';
import 'package:space/custom_matrial_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String pageRoute = 'Home Screen';
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backgrounds/Home.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 26 / 812 * size.height),
                Center(
                  child: Text(
                    'Explore',
                    style: GoogleFonts.spaceGrotesk(
                      color: AppColors.whiteColor,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(height: 199 / 812 * size.height),
                Image.asset(
                  'assets/images/planets/earth.png',
                  width: 342 / 375 * size.width,
                  height: 339 / 812 * size.height,
                ),
                SizedBox(height: 38 / 812 * size.height),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 43 / 375 * size.width,
                      height: 43 / 375 * size.width,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: AppColors.primaryColor,
                        shape: CircleBorder(),
                        child: Icon(
                          Icons.arrow_back,
                          color: AppColors.whiteColor,
                          size: 25,
                        ),
                      ),
                    ),
                    Text(
                      'Earth',
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 43 / 375 * size.width,
                      height: 43 / 375 * size.width,
                      child: FloatingActionButton(
                        onPressed: () {},
                        backgroundColor: AppColors.primaryColor,
                        shape: const CircleBorder(),
                        child: Icon(
                          Icons.arrow_forward,
                          color: AppColors.whiteColor,
                          size: 25,
                        ),
                      ),
                    ),
                  ],
                ),
                Spacer(),
                CustomMatrialButton(text: 'Explore Earth', onPressed: () {}),
                SizedBox(height: 8 / 812 * size.height),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
