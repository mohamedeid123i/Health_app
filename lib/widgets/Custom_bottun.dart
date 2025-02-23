import 'package:flutter/material.dart';
import 'package:untitled4/pages/Login_page.dart';
import 'package:untitled4/pages/Sign%20Up%20_page.dart';
import 'package:untitled4/utils/colors.dart';

class CustomBottun extends StatelessWidget {
  final double width;
  final double height;
  final String content;
  final Widget destination;
  const CustomBottun({super.key, required this.width, required this.height, required this.content, required this.destination});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 150,
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(15)
      ),
      child: TextButton(onPressed:(){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) =>  this.destination),

          );}, child: Text(content,style: TextStyle(color: Colors.white),)),
    );
  }
}
