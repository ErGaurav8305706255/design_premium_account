import 'package:flutter/material.dart';
class MotivationalScreen extends StatefulWidget {
  const MotivationalScreen({Key? key}) : super(key: key);

  @override
  State<MotivationalScreen> createState() => _MotivationalScreenState();
}

class _MotivationalScreenState extends State<MotivationalScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text('Comming soon',style: TextStyle(
          fontWeight: FontWeight.bold
      ),)),
    );
  }
}
