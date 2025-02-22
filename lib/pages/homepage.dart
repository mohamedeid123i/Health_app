import 'package:flutter/material.dart';
import 'package:untitled4/widgets/doctorprofile.dart';
import 'package:untitled4/widgets/nearby_doctor.dart';

import '../widgets/health_needs.dart';

class HealthappHomePage extends StatelessWidget {
  const HealthappHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: const EdgeInsets.all(14),
        children: [
        const SizedBox(height: 20),
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Hi,Jane",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
                  Text("How are you feeling today?",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.black45,),),
                ],
              ),
              Spacer(),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black12,
                  ),
                ),
                child: const Icon(Icons.notifications,size: 40,),
              ),
              const SizedBox(width: 15,),
               Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.black12,
                  ),
                ),
                child: const Icon(Icons.search,size: 40,),
              ),
            ],
          ),
        SizedBox(height: 30,),
        DoctorProfile(),
        SizedBox(height: 20,),
        const Text(
          "Health Needs",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
          const SizedBox(height: 20,),
          HealthNeeds(),
          const Text(
            "Nearby Doctor",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 30,),
          NearbyDoctor(),
      ],
      ),
    );
  }
}
