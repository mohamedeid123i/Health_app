import 'package:flutter/material.dart';
import 'package:untitled4/pages/main.dart';
import 'package:untitled4/widgets/Custom_bottun.dart';
import 'package:untitled4/widgets/Custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return (
    Scaffold(
      body: Padding(padding: const EdgeInsets.all(20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 70,),
            Image.asset("assets/imgs/doctors.png"),
            const SizedBox(height: 40,),
            const CustomTextField(prefixicon: Icon(Icons.person), sufixxicon: null, hint_text: "Enter Username", type: TextInputType.emailAddress),
            const SizedBox(height: 30,),
            const CustomTextField(prefixicon: Icon(Icons.lock), sufixxicon: Icon(Icons.visibility_off), hint_text: "Enter Password", type: TextInputType.text),
            const SizedBox(height: 50,),
            const CustomBottun(width: double.infinity, height: 50, content: "Login", destination: MyHomePage())
          ],
        ),
      ),
      ),
    )
    );
  }
}
