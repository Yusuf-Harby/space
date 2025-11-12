import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/app_colors.dart';
import 'package:space/planet.dart';

class PlanetDetailsScreen extends StatelessWidget {
  const PlanetDetailsScreen({super.key});
  static const String pageRoute = 'Planet Details Screen';
  @override
  Widget build(BuildContext context) {
    final planet = ModalRoute.of(context)!.settings.arguments as Planet;
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/backgrounds/Details.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 26 / 812 * size.height),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 43 / 375 * size.width,
                        height: 43 / 375 * size.width,
                        child: FloatingActionButton(
                          heroTag: "details_back_btn",
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
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
                        planet.planetName,
                        style: GoogleFonts.spaceGrotesk(
                          color: AppColors.whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(
                        width: 43 / 375 * size.width,
                        height: 43 / 375 * size.width,
                      ),
                    ],
                  ),
                  SizedBox(height: 39 / 812 * size.height),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      planet.title,
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Image.asset(
                    planet.pngImage,
                    width: 342 / 375 * size.width,
                    height: 339 / 812 * size.height,
                  ),
                  SizedBox(height: 36 / 812 * size.height),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'About',
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 8 / 812 * size.height),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      planet.about,
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                  SizedBox(height: 15 / 812 * size.height),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Distance from Sun: ${planet.distanceFromSunKm} km\n',
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Length of Day: ${planet.lengthOfDayHours} hours\n',
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Orbital Period: ${planet.orbitalPeriodYears} years\n',
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Radius: ${planet.radiusKm} km\n',
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Mass: ${planet.massKg}\n',
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Gravity: ${planet.gravity} m/s²\n',
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Surface Area: ${planet.surfaceAreaKm2} km²\n',
                      style: GoogleFonts.spaceGrotesk(
                        color: AppColors.whiteColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
