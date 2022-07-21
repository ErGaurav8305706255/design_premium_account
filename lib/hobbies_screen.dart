import 'package:flutter/material.dart';

import 'constant/color_constant.dart';
import 'constant/string_constant.dart';
import 'main_profile_screen.dart';
class HobbiesScreen extends StatefulWidget {
  const HobbiesScreen({Key? key}) : super(key: key);

  @override
  State<HobbiesScreen> createState() => _HobbiesScreenState();
}

class _HobbiesScreenState extends State<HobbiesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    InkWell(onTap: () {
                      Navigator.pop(context);
                      },
                        child: Icon(Icons.arrow_back_ios_new)),
                    SizedBox(width: 10),
                    Text(StringConstant.myProfile,
                      style: TextStyle(
                          color: ColorConstant.black,fontWeight: FontWeight.bold,fontSize: 17
                      ),
                    ),
                    Spacer(),
                    SizedBox(),
                  ],
                ),
                SizedBox(height: 50),
                Center(
                  child: Text(StringConstant.myHobbies,
                    style: TextStyle(
                      fontSize: 20,fontWeight: FontWeight.bold,
                  ),),
                ),
                SizedBox(height: 50),
                Center(child: Text(StringConstant.youHave1Hobby)),
                SizedBox(height: 20),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(10),
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: ColorConstant.containerColor
                      ),
                      child: Center(child: Text(StringConstant.badminton)),
                    ),
                    Spacer(),
                    Icon(Icons.border_color_outlined),
                    SizedBox(width: 10),
                    Icon(Icons.cancel_outlined)
                  ],
                ),
                SizedBox(height: 20),
                Text(StringConstant.intermediate,style: TextStyle(
                  fontSize: 16,fontWeight: FontWeight.w400
                ),),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      border: Border.all(color: ColorConstant.navy,width: 2)
                  ),
                  child: Center(
                      child: Text(StringConstant.addNewHobbies,
                        style: TextStyle(
                            color: ColorConstant.navy,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                        ),)),
                ),
                SizedBox(height: 15),
                InkWell(onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => MainProfileScreen()));
                },
                  child: Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: ColorConstant.buttonColor
                    ),
                    child: Center(
                        child: Text(StringConstant.save,
                          style: TextStyle(
                              color: ColorConstant.white,
                              fontSize: 15,
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
