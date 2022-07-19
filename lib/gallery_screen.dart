import 'package:design_premium_account/constant/color_constant.dart';
import 'package:design_premium_account/constant/string_constant.dart';
import 'package:design_premium_account/profile_screen.dart';
import 'package:flutter/material.dart';

import 'constant/color_constant.dart';
import 'constant/string_constant.dart';
import 'my_profile_screen.dart';
class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key? key}) : super(key: key);

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  final List items = [
    'assets/person.jpg',
    'assets/empty.png',
    'assets/empty.png',
    'assets/empty.png',
    'assets/empty.png',
    'assets/empty.png',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: ColorConstant.white,
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              children: [
                Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.pop(context);
                    },
                        child: Icon(Icons.arrow_back_ios_new)),
                    Spacer(),
                    SizedBox()
                  ],
                ),
                SizedBox(height: 50),
                Text(
                  StringConstant.gallery,
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 40),
                SizedBox(
                  height: 400,
                  child: GridView.builder(
                      itemCount: items.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 160
                      ),
                      itemBuilder: (context , index){
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(items[index],
                            fit: BoxFit.cover,
                          ),
                        );
                      }
                      ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyProfileScreen()));
                  },
                  child: Container(height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: ColorConstant.button_color
                    ),
                    child: Center(
                        child: Text(StringConstant.save,
                          style: TextStyle(
                              color: ColorConstant.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                          ),)),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
