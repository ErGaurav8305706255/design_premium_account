import 'package:clippy_flutter/arc.dart';
import 'package:design_premium_account/constant/color_constant.dart';
import 'package:design_premium_account/constant/string_constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'gallery_screen.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
          child: SafeArea(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  width: double.infinity,
                  decoration: BoxDecoration(
                  color: ColorConstant.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: 360),
                      Center(
                          child: Text(StringConstant.my_hobbies,
                            style: TextStyle(
                                color: ColorConstant.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                      ),)),
                      SizedBox(height: 20),
                      Container(
                        height: 30,width: 150,
                          decoration: BoxDecoration(
                              color: ColorConstant.container_color,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text(StringConstant.badminton))),
                      SizedBox(height: 15),
                      Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: ColorConstant.light_container_color
                        ),
                          child: Text(StringConstant.intermediate)),
                      SizedBox(height: 30),
                      Container(
                          height: 30,width: 150,
                        decoration: BoxDecoration(
                          color: ColorConstant.container_color,
                          borderRadius: BorderRadius.circular(10)
                        ),
                          child: Center(child: Text(StringConstant.photography))),
                      SizedBox(height: 15),
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.light_container_color
                          ),
                          child: Text(StringConstant.intermediate)),
                      SizedBox(height: 30),
                      Container(
                          height: 30,width: 150,
                          decoration: BoxDecoration(
                              color: ColorConstant.container_color,
                              borderRadius: BorderRadius.circular(10)
                          ),
                          child: Center(child: Text(StringConstant.gallery))),
                      SizedBox(height: 15),
                      Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: ColorConstant.light_container_color
                          ),
                          child: Text(StringConstant.intermediate)),
                    ],
                  ),
                ),
                Arc(
                  arcType: ArcType.CONVEX,
                  edge: Edge.BOTTOM,
                  height: 50,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                    height: 350,
                    decoration: BoxDecoration(
                      color: ColorConstant.container_color,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(StringConstant.my_profile,style: TextStyle(
                              fontSize: 18,
                                fontWeight: FontWeight.bold
                            )),
                            Spacer(),
                            Icon(Icons.apps,size: 35,)
                          ],
                        ),
                        SizedBox(height: 150),
                        Text(StringConstant.james_clark,
                            style: TextStyle(
                          color: ColorConstant.white,
                                fontSize: 20,
                                fontWeight: FontWeight.bold
                        )),
                        SizedBox(height: 15),
                        Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.location_on),
                            SizedBox(width: 5),
                            Text(StringConstant.london,style: TextStyle(
                              fontSize: 17
                            )),
                          ],
                        ),
                        SizedBox(height: 15),
                        Container(
                            width: 110,
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                            decoration: BoxDecoration(
                                color: ColorConstant.button_color,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Row(
                              children: [
                                Icon(Icons.diamond_outlined,color: ColorConstant.white),
                                SizedBox(width: 5),
                                Text(StringConstant.premium,style: TextStyle(
                                  color: ColorConstant.white
                                )),
                              ],
                            ))
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 65,
                    left: 110,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(80),
                        child: Image.asset('assets/person.jpg',
                            fit: BoxFit.cover,
                            width: 120,
                            height: 120))
                ),
                Positioned(
                    top: 150,
                    left: 205,
                    child: InkWell(onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryScreen()));
                    },
                      child: Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(color: ColorConstant.gray,
                        borderRadius: BorderRadius.circular(40)
                      ),
                        child: Icon(Icons.camera_alt,color: ColorConstant.white,size: 18),
                      ),
                    ))
              ],
            ),
          ),
        ),
    );

  }
}
