import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:space/app_colors.dart';
import 'package:space/custom_matrial_button.dart';
import 'package:space/planet.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static const String pageRoute = 'Home Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController? controller = PageController();

  int index = 0;

  final List<Planet> planets = [
    Planet(
      planetName: "Sun",
      pngImage: "assets/images/planets/sun.png",
      title: "The Sun: Our Solar System's Star",
      about:
          "The Sun is the heart of our solar system, a massive ball of plasma that provides heat, light, and energy to everything within its gravitational pull. Its immense size and temperature are fueled by nuclear fusion, a process that combines hydrogen atoms into helium, releasing vast amounts of energy. The Sun's magnetic field, which is constantly changing, influences solar activity like sunspots and solar flares, affecting space weather and potentially disrupting Earth-based technologies.",
      distanceFromSunKm: 0,
      lengthOfDayHours: 0,
      orbitalPeriodYears: 0,
      radiusKm: 695700,
      massKg: "1.989 × 10³⁰",
      gravity: 274,
      surfaceAreaKm2: "6.09 × 10¹²",
    ),
    Planet(
      planetName: "Mercury",
      pngImage: "assets/images/planets/mercury.png",
      title: "Mercury: The Closest Planet",
      about:
          "Mercury is the smallest planet and the closest to the Sun. It has extreme temperature variations and no atmosphere to retain heat. Its surface is heavily cratered, resembling Earth's Moon.",
      distanceFromSunKm: 57909227,
      lengthOfDayHours: 1407.60,
      orbitalPeriodYears: 0.24,
      radiusKm: 2439.70,
      massKg: "3.301 × 10²³",
      gravity: 3.7,
      surfaceAreaKm2: "7.48 × 10⁷",
    ),
    Planet(
      planetName: "Venus",
      pngImage: "assets/images/planets/venus.png",
      title: "Venus: Earth's Toxic Twin",
      about:
          "Venus is often referred to as Earth's twin due to its similar size and composition. However, its thick atmosphere traps heat, making it the hottest planet in our solar system. The planet is covered by clouds of sulfuric acid.",
      distanceFromSunKm: 108209072,
      lengthOfDayHours: 5832.20,
      orbitalPeriodYears: 0.62,
      radiusKm: 6051.80,
      massKg: "4.867 × 10²⁴",
      gravity: 8.87,
      surfaceAreaKm2: "4.60 × 10⁸",
    ),
    Planet(
      planetName: "Earth",
      pngImage: "assets/images/planets/earth.png",
      title: "Earth: Our Blue Marble",
      about:
          "Earth is the only known planet in the universe that supports life. Its unique combination of water, atmosphere, and distance from the Sun creates ideal conditions for living organisms.",
      distanceFromSunKm: 149598026,
      lengthOfDayHours: 23.93,
      orbitalPeriodYears: 1,
      radiusKm: 6371,
      massKg: "5.972 × 10²⁴",
      gravity: 9.81,
      surfaceAreaKm2: "5.10 × 10⁸",
    ),
    Planet(
      planetName: "Mars",
      pngImage: "assets/images/planets/mars.png",
      title: "Mars: The Red Planet",
      about:
          "Mars, often called the Red Planet due to its reddish hue caused by iron oxide, is a cold, rocky world with a thin atmosphere. It has polar ice caps and ancient riverbeds, suggesting it once had water.",
      distanceFromSunKm: 227943824,
      lengthOfDayHours: 24.62,
      orbitalPeriodYears: 1.88,
      radiusKm: 3389.50,
      massKg: "6.39 × 10²³",
      gravity: 3.71,
      surfaceAreaKm2: "1.45 × 10⁸",
    ),
    Planet(
      planetName: "Jupiter",
      pngImage: "assets/images/planets/jupiter.png",
      title: "Jupiter: The Gas Giant",
      about:
          "Jupiter is the largest planet in our solar system, composed mainly of hydrogen and helium. Its Great Red Spot is a massive storm that has raged for centuries.",
      distanceFromSunKm: 778547669,
      lengthOfDayHours: 9.92,
      orbitalPeriodYears: 11.86,
      radiusKm: 69911,
      massKg: "1.898 × 10²⁷",
      gravity: 24.79,
      surfaceAreaKm2: "6.21 × 10¹⁵",
    ),
    Planet(
      planetName: "Saturn",
      pngImage: "assets/images/planets/saturn.png",
      title: "Saturn: The Ringed Planet",
      about:
          "Saturn is famous for its rings made of ice and rock particles. It’s a gas giant with many moons, including Titan, which has lakes and rivers of methane.",
      distanceFromSunKm: 1426666422,
      lengthOfDayHours: 10.66,
      orbitalPeriodYears: 29.46,
      radiusKm: 58232,
      massKg: "5.683 × 10²⁶",
      gravity: 10.44,
      surfaceAreaKm2: "4.27 × 10¹⁵",
    ),
    Planet(
      planetName: "Uranus",
      pngImage: "assets/images/planets/uranus.png",
      title: "Uranus: The Tilted Planet",
      about:
          "Uranus is an ice giant with an extreme axial tilt that causes its seasons to be very long and intense. It has faint rings and a pale blue color due to methane.",
      distanceFromSunKm: 2870990000,
      lengthOfDayHours: 17.24,
      orbitalPeriodYears: 84.01,
      radiusKm: 25362,
      massKg: "8.681 × 10²⁵",
      gravity: 8.69,
      surfaceAreaKm2: "8.1 × 10¹⁵",
    ),
    Planet(
      planetName: "Neptune",
      pngImage: "assets/images/planets/neptune.png",
      title: "Neptune: The Distant World",
      about:
          "Neptune is the farthest planet from the Sun and has strong winds and storms. Its deep blue color is due to methane in its atmosphere.",
      distanceFromSunKm: 4498252900,
      lengthOfDayHours: 16.11,
      orbitalPeriodYears: 164.8,
      radiusKm: 24622,
      massKg: "1.024 × 10²⁶",
      gravity: 11.15,
      surfaceAreaKm2: "7.65 × 10¹⁵",
    ),
  ];

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
                SizedBox(
                  width: double.infinity,
                  height: 339 / 812 * size.height,
                  child: PageView.builder(
                    itemBuilder: (_, index) {
                      this.index = index;
                      return Image.asset(
                        planets[index].pngImage,
                        width: 342 / 375 * size.width,
                        height: 339 / 812 * size.height,
                      );
                    },
                    itemCount: planets.length,
                    controller: controller,
                  ),
                ),
                SizedBox(height: 38 / 812 * size.height),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 43 / 375 * size.width,
                      height: 43 / 375 * size.width,
                      child: FloatingActionButton(
                        heroTag: "back_btn",
                        onPressed: () {
                          if (index > 0) {
                            index--;
                            controller?.previousPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                            setState(() {});
                          }
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
                      planets[index].planetName,
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
                        heroTag: "forward_btn",
                        onPressed: () {
                          if (index < planets.length - 1) {
                            index++;
                            controller?.nextPage(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.easeInOut,
                            );
                            setState(() {});
                          }
                        },
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
                CustomMatrialButton(
                  text: 'Explore ${planets[index].planetName}',
                  onPressed: () {},
                ),
                SizedBox(height: 8 / 812 * size.height),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
