import 'package:design_premium_account/constant/color_constant.dart';
import 'package:design_premium_account/constant/string_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'main_profile_screen.dart';


class SearchSettingScreen extends StatefulWidget {
  const SearchSettingScreen({Key? key}) : super(key: key);

  @override
  State<SearchSettingScreen> createState() => _SearchSettingScreenState();
}

class _SearchSettingScreenState extends State<SearchSettingScreen> {
  RangeValues values = RangeValues(10,50);
  RangeValues values2 = RangeValues(10,50);
  RangeValues values3 = RangeValues(10,50);
  RangeValues values4 = RangeValues(10,50);
  RangeValues values5 = RangeValues(10,50);
  RangeValues values6 = RangeValues(10,50);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
        body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
              child: Column(
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
                  Text(StringConstant.searchSetting,style: TextStyle(
                    fontSize: 20,fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 25),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(width: 1,color: ColorConstant.lightGray)
                    ),
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(StringConstant.gender,style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold
                        )),
                        TabBar(
                            indicator: BoxDecoration(
                              color: ColorConstant.containerColor, borderRadius: BorderRadius.circular(10)),
                            indicatorColor: ColorConstant.transparent,
                            labelColor: ColorConstant.black,
                            labelStyle: const TextStyle(fontSize: 17,fontWeight: FontWeight.bold),
                            unselectedLabelColor: ColorConstant.lightGray,
                            unselectedLabelStyle: const TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                            tabs: [
                              Tab(text: StringConstant.male,),
                              Tab(text: StringConstant.female),
                              Tab(text: StringConstant.both),
                        ]),
                      ],
                    ),
                  ),
                  SizedBox(height: 15),
                  Container(
                    height: 350,
                    decoration: BoxDecoration(
                        color: ColorConstant.transparent
                    ),
                    child: TabBarView(
                        children: [
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,color: ColorConstant.lightGray)
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(StringConstant.distance,
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )),
                                        Spacer(),
                                        Text('35km',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text('Max',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 1,color: ColorConstant.gray)
                                          ),
                                          child: Text('35km',
                                              style: TextStyle(
                                                  fontSize: 15,fontWeight: FontWeight.bold
                                              )
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    RangeSlider(
                                        values: values,
                                        min: 0,
                                        max: 50,
                                        activeColor: ColorConstant.containerColor,
                                        inactiveColor: ColorConstant.gray,
                                        labels: RangeLabels(
                                          values.start.round().toString(),
                                          values.end.round().toString()
                                        ),
                                        onChanged: (values) => setState(() {
                                          this.values = values;
                                        }))
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,color: ColorConstant.lightGray)
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(StringConstant.age,
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )),
                                        Spacer(),
                                        Text('21 - 37',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text('From',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        ),
                                        SizedBox(width: 10),
                                        Container(width: 100,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 1,color: ColorConstant.gray)
                                          ),
                                          child: Center(
                                            child: Text('21',
                                                style: TextStyle(
                                                    fontSize: 15,fontWeight: FontWeight.bold
                                                )
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Text('To',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        ),
                                        SizedBox(width: 10),
                                        Container(width: 100,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 1,color: ColorConstant.gray)
                                          ),
                                          child: Center(
                                            child: Text('37',
                                                style: TextStyle(
                                                    fontSize: 15,fontWeight: FontWeight.bold
                                                )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    RangeSlider(
                                        values: values2,
                                        min: 0,
                                        max: 50,
                                        activeColor: ColorConstant.containerColor,
                                        inactiveColor: ColorConstant.gray,
                                        labels: RangeLabels(
                                            values.start.round().toString(),
                                            values.end.round().toString()
                                        ),
                                        onChanged: (values) => setState(() {
                                          this.values2 = values;
                                        }))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,color: ColorConstant.lightGray)
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(StringConstant.distance,
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )),
                                        Spacer(),
                                        Text('35km',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text('Max',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 1,color: ColorConstant.gray)
                                          ),
                                          child: Text('35km',
                                              style: TextStyle(
                                                  fontSize: 15,fontWeight: FontWeight.bold
                                              )
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    RangeSlider(
                                        values: values3,
                                        min: 0,
                                        max: 50,
                                        activeColor: ColorConstant.containerColor,
                                        inactiveColor: ColorConstant.gray,
                                        labels: RangeLabels(
                                            values.start.round().toString(),
                                            values.end.round().toString()
                                        ),
                                        onChanged: (values) => setState(() {
                                          this.values3 = values;
                                        }))
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,color: ColorConstant.lightGray)
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(StringConstant.age,
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )),
                                        Spacer(),
                                        Text('21 - 37',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text('From',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        ),
                                        SizedBox(width: 10),
                                        Container(width: 100,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 1,color: ColorConstant.gray)
                                          ),
                                          child: Center(
                                            child: Text('21',
                                                style: TextStyle(
                                                    fontSize: 15,fontWeight: FontWeight.bold
                                                )
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Text('To',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        ),
                                        SizedBox(width: 10),
                                        Container(width: 100,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 1,color: ColorConstant.gray)
                                          ),
                                          child: Center(
                                            child: Text('37',
                                                style: TextStyle(
                                                    fontSize: 15,fontWeight: FontWeight.bold
                                                )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    RangeSlider(
                                        values: values4,
                                        min: 0,
                                        max: 50,
                                        activeColor: ColorConstant.containerColor,
                                        inactiveColor: ColorConstant.gray,
                                        labels: RangeLabels(
                                            values.start.round().toString(),
                                            values.end.round().toString()
                                        ),
                                        onChanged: (values) => setState(() {
                                          this.values4 = values;
                                        }))
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,color: ColorConstant.lightGray)
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(StringConstant.distance,
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )),
                                        Spacer(),
                                        Text('35km',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text('Max',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        ),
                                        SizedBox(width: 10),
                                        Container(
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 1,color: ColorConstant.gray)
                                          ),
                                          child: Text('35km',
                                              style: TextStyle(
                                                  fontSize: 15,fontWeight: FontWeight.bold
                                              )
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    RangeSlider(
                                        values: values5,
                                        min: 0,
                                        max: 50,
                                        activeColor: ColorConstant.containerColor,
                                        inactiveColor: ColorConstant.gray,
                                        labels: RangeLabels(
                                            values.start.round().toString(),
                                            values.end.round().toString()
                                        ),
                                        onChanged: (values) => setState(() {
                                          this.values5 = values;
                                        }))
                                  ],
                                ),
                              ),
                              SizedBox(height: 15),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(width: 1,color: ColorConstant.lightGray)
                                ),
                                child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(StringConstant.age,
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )),
                                        Spacer(),
                                        Text('21 - 37',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Text('From',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        ),
                                        SizedBox(width: 10),
                                        Container(width: 100,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 1,color: ColorConstant.gray)
                                          ),
                                          child: Center(
                                            child: Text('21',
                                                style: TextStyle(
                                                    fontSize: 15,fontWeight: FontWeight.bold
                                                )
                                            ),
                                          ),
                                        ),
                                        Spacer(),
                                        Text('To',
                                            style: TextStyle(
                                                fontSize: 15,fontWeight: FontWeight.bold
                                            )
                                        ),
                                        SizedBox(width: 10),
                                        Container(width: 100,
                                          padding: EdgeInsets.all(10),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(10),
                                              border: Border.all(width: 1,color: ColorConstant.gray)
                                          ),
                                          child: Center(
                                            child: Text('37',
                                                style: TextStyle(
                                                    fontSize: 15,fontWeight: FontWeight.bold
                                                )
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                    SizedBox(height: 15),
                                    RangeSlider(
                                        values: values6,
                                        min: 0,
                                        max: 50,
                                        activeColor: ColorConstant.containerColor,
                                        inactiveColor: ColorConstant.gray,
                                        labels: RangeLabels(
                                            values.start.round().toString(),
                                            values.end.round().toString()
                                        ),
                                        onChanged: (values) => setState(() {
                                          this.values6 = values;
                                        }))
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]
                    ),
                  ),
                  SizedBox(height: 50),
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
                          child: Text(StringConstant.apply,
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
      ),
    );
  }
}
