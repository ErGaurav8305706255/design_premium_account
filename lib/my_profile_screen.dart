import 'package:clippy_flutter/arc.dart';
import 'package:design_premium_account/constant/color_constant.dart';
import 'package:design_premium_account/constant/string_constant.dart';
import 'package:design_premium_account/gallery_screen.dart';
import 'package:design_premium_account/search_setting_screen.dart';
import 'package:flutter/material.dart';

import 'constant/color_constant.dart';
import 'constant/string_constant.dart';
class MyProfileScreen extends StatefulWidget {
  const MyProfileScreen({Key? key}) : super(key: key);

  @override
  State<MyProfileScreen> createState() => _MyProfileScreenState();
}

class _MyProfileScreenState extends State<MyProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: ColorConstant.white,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                        StringConstant.log_out,
                        style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline
                        )),
                  ],
                ),
              ),
              Arc(
                height: 40,
                arcType: ArcType.CONVEX,
                edge: Edge.BOTTOM,
                child: Container(
                  height: 600,
                  decoration: BoxDecoration(
                    color: ColorConstant.container_color
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    child: Column(
                      children: [
                        SizedBox(height: 20),
                        Row(
                          children: [
                            InkWell(onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  GalleryScreen()));
                            },
                                child: Icon(Icons.arrow_back_ios_new)),
                            SizedBox(width: 20),
                            Text(StringConstant.my_profile,
                                style: TextStyle(
                                    fontSize: 16
                                )),
                            Spacer(),
                            Icon(Icons.cancel_outlined,size: 30,)
                          ],
                        ),
                        SizedBox(height: 170),
                        Row(
                          children: [
                            Text(StringConstant.information,
                                style: TextStyle(
                                    fontSize: 16
                                )
                            ),
                            Spacer(),
                            InkWell(onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => InfirmationScreen()));
                            },
                                child: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: [
                            Text(StringConstant.hobbies,
                                style: TextStyle(
                                    fontSize: 16
                                )
                            ),
                            Spacer(),
                            InkWell(onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => HobbiesScreen()));
                            },
                              child: Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: [
                            Text(StringConstant.search_setting,
                                style: TextStyle(
                                    fontSize: 16
                                )
                            ),
                            Spacer(),
                            InkWell(onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) =>  SearchSettingScreen()));
                            },
                              child:
                            Icon(Icons.arrow_forward_ios))
                          ],
                        ),
                        SizedBox(height: 50),
                        Row(
                          children: [
                            Text(StringConstant.privacy_policy,
                                style: TextStyle(
                                    fontSize: 16
                                )
                            ),
                            Spacer(),
                            InkWell(onTap: () {
                              // Navigator.push(context, MaterialPageRoute(builder: (context) => PrivacyPolicyScreen()));
                            },
                              child:
                            Icon(Icons.arrow_forward_ios))
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
      )),
    );
  }
}
