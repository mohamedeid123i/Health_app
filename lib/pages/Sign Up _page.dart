import 'package:flutter/material.dart';
import 'package:untitled4/pages/main.dart';
import 'package:untitled4/widgets/Custom_bottun.dart';
import 'package:untitled4/widgets/Custom_text_field.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 50,),
              Image.asset("assets/imgs/doctors.png"),
              const SizedBox(height: 40,),
              const CustomTextField(prefixicon: Icon(Icons.person), sufixxicon: null, hint_text: "Full Name", type: TextInputType.text),
              const SizedBox(height: 20,),
              const CustomTextField(prefixicon: Icon(Icons.email), sufixxicon: null, hint_text: "Email Address", type: TextInputType.emailAddress),
              const SizedBox(height: 20,),
              const CustomTextField(prefixicon: Icon(Icons.phone), sufixxicon: null, hint_text: "Phone Number", type: TextInputType.phone),
              const SizedBox(height: 20,),
              const CustomTextField(prefixicon: Icon(Icons.lock), sufixxicon: Icon(Icons.visibility_off), hint_text: "Enter Password", type: TextInputType.text),
              const SizedBox(height: 20,),
              const CustomBottun(width: double.infinity, height: 50, content: "Register", destination: MyHomePage()),
            ],
          ),
        ),
      ),
    );
  }
}
