import 'package:flutter/material.dart';
import 'package:untitled4/utils/colors.dart';
import 'package:untitled4/widgets/doctor_details.dart';

class DoctorProfile extends StatelessWidget {
  const DoctorProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        width: 300,
        height: 180,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: kPrimaryColor,
          boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5), // Shadow color with opacity
            blurRadius: 15, // Softens the shadow
            offset: const Offset(10, 15), // Moves shadow downward
            spreadRadius: 0, // No extra spread
          ),
          ],
        ),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 25),
          child: DoctorDetails(name: "dr.Ruben Dorwart", position: "Dental Specialist",profile: "https://images.unsplash.com/photo-1612276529731-4b21494e6d71?fm=jpg&q=60&w=3000&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8ZG9jdG9yJTIwcG9ydHJhaXR8ZW58MHx8MHx8fDA%3D",)
        ),
      ),
    );
  }
}