import 'package:flutter/material.dart';

import 'constant/color_constant.dart';
class MotivationalScreen extends StatefulWidget {
  const MotivationalScreen({Key? key}) : super(key: key);

  @override
  State<MotivationalScreen> createState() => _MotivationalScreenState();
}

class _MotivationalScreenState extends State<MotivationalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Text('Comming soon',
              style: TextStyle(
                color: ColorConstant.textColor,
                  fontWeight: FontWeight.bold,
              ),
            )),
      ),
    );
  }
}
