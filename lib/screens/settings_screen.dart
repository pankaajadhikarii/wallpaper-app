import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.arrow_back,
                    size: 27,
                    color: const Color(0xff292D32),
                  ),
                ),
                Text(
                  "Settings",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff191E31),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Container(
              height: 370,
              width: double.maxFinite,
              decoration: BoxDecoration(
                color: Color(0xffFFFFFF),
                borderRadius: BorderRadius.circular(35),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withValues(alpha: 0.10),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: Offset(1, 4),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 30,
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                color: Color(0xff191E31),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(
                                Icons.notifications_outlined,
                                color: Color(0xffFFFFFF),
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Push Notifications",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                          child: Transform.scale(
                            scale: 0.9,
                            child: Switch(
                              value: isSwitched,
                              onChanged: (value) {
                                setState(() {
                                  isSwitched = value;
                                });
                              },
                              activeColor: Color(0xffFFFFFF),
                              activeTrackColor: Color(0xff191E31),
                            
                              inactiveThumbColor: Color(0xff191E31),
                              inactiveTrackColor: Color(0xffFFFFFF),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Divider(color: Color(0xffC5C5C5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                color: Color(0xff191E31),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(
                                Icons.send_rounded,
                                color: Color(0xffFFFFFF),
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Invite a friend",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffC5C5C5),
                          size: 20,
                        ),
                      ],
                    ),
                    Divider(color: Color(0xffC5C5C5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                color: Color(0xff191E31),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(
                                Icons.star_border_rounded,
                                color: Color(0xffFFFFFF),
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Rate this app",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffC5C5C5),
                          size: 20,
                        ),
                      ],
                    ),
                    Divider(color: Color(0xffC5C5C5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                color: Color(0xff191E31),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(
                                Icons.message_outlined,
                                color: Color(0xffFFFFFF),
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Feedback & bugs",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffC5C5C5),
                          size: 20,
                        ),
                      ],
                    ),
                    Divider(color: Color(0xffC5C5C5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                color: Color(0xff191E31),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(
                                Icons.description_outlined,
                                color: Color(0xffFFFFFF),
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Terms & Conditions",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffC5C5C5),
                          size: 20,
                        ),
                      ],
                    ),
                    Divider(color: Color(0xffC5C5C5)),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 38,
                              width: 38,
                              decoration: BoxDecoration(
                                color: Color(0xff191E31),
                                borderRadius: BorderRadius.circular(6),
                              ),
                              child: Icon(
                                Icons.privacy_tip_outlined,
                                color: Color(0xffFFFFFF),
                                size: 30,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "Privacy Policy",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: Color(0xffC5C5C5),
                          size: 20,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 40),
            Image(image: AssetImage("assets/socials.png"), height: 50,)
          ],
        ),
      ),
    );
  }
}