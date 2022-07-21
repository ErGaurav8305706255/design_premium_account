import 'package:design_premium_account/constant/color_constant.dart';
import 'package:design_premium_account/constant/image_constant.dart';
import 'package:design_premium_account/constant/string_constant.dart';
import 'package:design_premium_account/profile_screen.dart';
import 'package:flutter/material.dart';

import 'constant/color_constant.dart';
import 'constant/string_constant.dart';
import 'main_profile_screen.dart';
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
                    color: ColorConstant.textColor,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),),
                SizedBox(height: 40),
                SizedBox(
                  height: 340,
                  child: GridView.builder(
                      itemCount: items.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          mainAxisExtent: 160
                      ),
                      itemBuilder: (context , index){
                        return Container(
                          alignment: Alignment.bottomRight,
                          decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage(items[index]),fit: BoxFit.cover
                          )
                        ),
                          child: Icon(Icons.add_circle_outlined,size: 25,color: ColorConstant.lightGray),
                        );
                      }
                      ),
                ),
                Spacer(),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(40),
                        color: ColorConstant.buttonColor
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
