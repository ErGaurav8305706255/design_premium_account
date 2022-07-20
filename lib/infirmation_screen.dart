import 'package:flutter/material.dart';

import 'constant/color_constant.dart';
import 'constant/string_constant.dart';
class InfirmationScreen extends StatefulWidget {
  const InfirmationScreen({Key? key}) : super(key: key);

  @override
  State<InfirmationScreen> createState() => _InfirmationScreenState();
}

class _InfirmationScreenState extends State<InfirmationScreen> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: SafeArea(
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
                        Text(StringConstant.my_profile,
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
                      child: Text(StringConstant.information,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold
                        ),),
                    ),
                    SizedBox(height: 15),
                    Text(StringConstant.name,
                    style: TextStyle(
                      color: ColorConstant.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                    )
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                          hintText: StringConstant.name,
                          filled: true,
                          hintStyle: TextStyle(
                              color: ColorConstant.black
                          ),
                          fillColor: ColorConstant.transparent,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: ColorConstant.light_gray,width: 1
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(StringConstant.dob,
                        style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(height: 15),
                    TextField(
                      decoration: InputDecoration(
                          hintText: StringConstant.dob,
                          filled: true,
                          hintStyle: TextStyle(
                              color: ColorConstant.black
                          ),
                          fillColor: ColorConstant.transparent,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide(
                                  color: ColorConstant.light_gray,width: 1
                              )
                          )
                      ),
                    ),
                    SizedBox(height: 15),
                    Text(StringConstant.gender,
                        style: TextStyle(
                            color: ColorConstant.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold
                        )
                    ),
                    SizedBox(height: 15),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: ColorConstant.light_gray,width: 1)
                      ),
                      child: TabBar(
                        indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.container_color,
                        ),
                          indicatorColor: ColorConstant.transparent,
                          labelColor: ColorConstant.black,
                          labelStyle: TextStyle(
                            fontSize: 15,
                             fontWeight: FontWeight.bold,
                          ),
                          tabs: [
                            Tab(
                              child: Row(
                                children: [
                                   Icon(Icons.male),
                                  Text(StringConstant.male)
                                ],
                              ),
                            ),
                            Tab(child: Row(
                              children: [
                                Icon(Icons.female),
                                Text(StringConstant.female)
                              ],
                            ),)
                      ]),
                    ),

                    SizedBox(height: 150),
                    Container(
                      padding: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: ColorConstant.button_color
                      ),
                      child: Center(child: Text(StringConstant.save,
                        style: TextStyle(
                            color: ColorConstant.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold
                      ),)),
                    )
                  ],
                ),
              )),
        ),
      ),
    );
  }
}
