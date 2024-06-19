import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medication_tracker_app/pages/home_page.dart';
import 'package:medication_tracker_app/util.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  ColorPalette colorPalette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.medical_services_outlined,
                  color: colorPalette.mainGreen,
                  size: 36,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  'MediTrack',
                  style: TextStyle(
                      fontFamily: 'Outfit',
                      color: colorPalette.mainGreen,
                      fontSize: 30,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            SizedBox(
              height: 360,
              width: 360,
              child: Stack(
                children: [
                  Center(
                    child: Container(
                      height: 230,
                      width: 230,
                      decoration: BoxDecoration(
                          color: colorPalette.mainBlue, shape: BoxShape.circle),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    left: 30,
                    child: Image.asset(
                      'lib/assets/images/doctors.png',
                      height: 240,
                      width: 240,
                    ),
                  ),
                ],
              ),
            ),
            Text(
              'Your assistant in\nhealth care',
              style: TextStyle(
                  fontFamily: 'Outfit',
                  color: colorPalette.textDarkGreen,
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  height: 1.2),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'Take care of your health\ntogether with professionals',
              style: TextStyle(
                  fontFamily: 'Outfit',
                  color: colorPalette.darkGrey,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 1.2),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Wrap(
        alignment: WrapAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const HomePage(),
                  ));
            },
            child: Container(
              height: 56,
              width: 380,
              margin: const EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                color: colorPalette.mainGreen,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Center(
                child: Text(
                  'Continue',
                  style: TextStyle(
                      fontFamily: 'Outfit',
                      color: colorPalette.light,
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
