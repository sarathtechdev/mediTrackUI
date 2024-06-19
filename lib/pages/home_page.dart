import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medication_tracker_app/util.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ColorPalette colorPalette = ColorPalette();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 60),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    clipBehavior: Clip.hardEdge,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(14)),
                    child: Image.asset(
                      'lib/assets/images/person-2.jpg',
                      height: 52,
                      width: 52,
                    ),
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Good Morning,',
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              color: colorPalette.dark,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              height: 1.2)),
                      Text('Jake',
                          style: TextStyle(
                              fontFamily: 'Outfit',
                              color: colorPalette.dark,
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              height: 1.2)),
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 44,
                    width: 44,
                    decoration: BoxDecoration(
                        color: colorPalette.lightGrey,
                        borderRadius: BorderRadius.circular(12)),
                    child: Center(
                      child: Stack(
                        children: [
                          Icon(Icons.notifications_none_outlined,
                              color: colorPalette.darkGrey, size: 26),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Icon(Icons.circle,
                                color: colorPalette.notificationDot, size: 10),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 140,
                width: 380,
                decoration: BoxDecoration(
                  color: colorPalette.mainBlue,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Keep it up!',
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                color: colorPalette.light,
                                fontSize: 18,
                                fontWeight: FontWeight.w600)),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                            "You haven't missed a\nsingle medication. Well done!",
                            style: TextStyle(
                                fontFamily: 'Outfit',
                                color: colorPalette.light,
                                fontSize: 12,
                                fontWeight: FontWeight.w400)),
                      ],
                    ),
                    const Spacer(),
                    Image.asset(
                      'lib/assets/images/medicine.png',
                      height: 120,
                      width: 120,
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Pills for today',
                      style: TextStyle(
                          fontFamily: 'Outfit',
                          color: colorPalette.dark,
                          fontSize: 22,
                          fontWeight: FontWeight.w600)),
                  const Spacer(),
                  Text('See all',
                      style: TextStyle(
                          fontFamily: 'Outfit',
                          color: colorPalette.mainGreen,
                          fontSize: 14,
                          fontWeight: FontWeight.w400)),
                ],
              ),
              SizedBox(
                height: 200,
                width: 380,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 160,
                      width: 270,
                      decoration: BoxDecoration(
                        color: colorPalette.mainGreenExtraLight,
                        borderRadius: BorderRadius.circular(18),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Container(
                        height: 160,
                        width: 320,
                        decoration: BoxDecoration(
                          color: colorPalette.mainGreenLight,
                          borderRadius: BorderRadius.circular(18),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        height: 160,
                        width: 360,
                        decoration: BoxDecoration(
                          color: colorPalette.light,
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  color: colorPalette.mainGreen,
                                  borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(18),
                                      topRight: Radius.circular(18))),
                              child: Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 60,
                                      width: 60,
                                      padding: const EdgeInsets.all(6),
                                      decoration: BoxDecoration(
                                          color: colorPalette.light,
                                          borderRadius:
                                              BorderRadius.circular(12)),
                                      child: Image.asset(
                                        'lib/assets/icons/rounded-pill.png',
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text('De-Nol',
                                            style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: colorPalette.light,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w400)),
                                        Text('Take with food every',
                                            style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: colorPalette.light,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)),
                                      ],
                                    ),
                                    const Spacer(),
                                    Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                          color: colorPalette.light,
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                      child: Center(
                                        child: Icon(Icons.done,
                                            color: colorPalette.mainGreen,
                                            size: 20),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 380,
                              decoration: BoxDecoration(
                                  color: colorPalette.mainGreenLight,
                                  borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(18),
                                      bottomRight: Radius.circular(18))),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 50),
                                child: Row(
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Dose',
                                            style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: colorPalette.light,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text('40 mg',
                                            style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: colorPalette.light,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Reception time',
                                            style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: colorPalette.light,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text('11:30 AM',
                                            style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: colorPalette.light,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    ),
                                    const Spacer(),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text('Fills',
                                            style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: colorPalette.light,
                                                fontSize: 12,
                                                fontWeight: FontWeight.w400)),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Text('10 left',
                                            style: TextStyle(
                                                fontFamily: 'Outfit',
                                                color: colorPalette.light,
                                                fontSize: 14,
                                                fontWeight: FontWeight.w600)),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('Additional vitamins',
                      style: TextStyle(
                          fontFamily: 'Outfit',
                          color: colorPalette.dark,
                          fontSize: 22,
                          fontWeight: FontWeight.w600)),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              Container(
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                    color: colorPalette.mainGreenExtraSuperLight,
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: colorPalette.light,
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          'lib/assets/icons/omega3-pill.png',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Omega 3',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  color: colorPalette.dark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                          Text('8:30 AM - After eating',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  color: colorPalette.darkGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                height: 80,
                width: 380,
                decoration: BoxDecoration(
                    color: colorPalette.mainGreenExtraSuperLight,
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 60,
                        width: 60,
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: colorPalette.light,
                            borderRadius: BorderRadius.circular(12)),
                        child: Image.asset(
                          'lib/assets/icons/vitamin-pill.png',
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Vitamin A',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  color: colorPalette.dark,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600)),
                          Text('12:30 PM - Before eating',
                              style: TextStyle(
                                  fontFamily: 'Outfit',
                                  color: colorPalette.darkGrey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400)),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
