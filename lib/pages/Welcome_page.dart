import 'package:flutter/material.dart';
import 'package:untitled4/pages/Login_page.dart';
import 'package:untitled4/pages/Sign%20Up%20_page.dart';
import 'package:untitled4/pages/main.dart';
import 'package:untitled4/utils/colors.dart';
import 'package:untitled4/widgets/Custom_bottun.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => const LoginPage()),
            );

          }, child: const Text("SKIP",style: TextStyle(color: kPrimaryColor,fontSize: 20,fontWeight: FontWeight.bold),)),
          const SizedBox(width: 20,)
        ],
      ),
      body: Padding(padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          const SizedBox(height: 50,),
          Image.asset("assets/imgs/doctors.png"),
          const SizedBox(height: 50,),
          const Text("Doctors Appointment",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: kPrimaryColor),),
          const SizedBox(height: 30,),
          const Text("Appoint your doctor",style: TextStyle(color: Colors.grey,fontSize: 17,fontWeight: FontWeight.bold),),
          const SizedBox(height: 70,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomBottun(width: 150, height: 50, content: "Sign up", destination: SignUp(),),
              CustomBottun(width: 150, height: 50, content: "Login", destination: LoginPage(),),
            ],
          )

        ],
      ),),
    );
  }
}
