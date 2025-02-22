import 'package:flutter/material.dart';
import 'package:untitled4/models/schedule_model.dart';
import 'package:untitled4/utils/colors.dart';
import 'package:untitled4/widgets/doctor_details.dart';
import 'package:untitled4/widgets/nearby_doctor.dart';
import 'package:untitled4/widgets/schedule_options.dart';

class DoctorScheduleScreen extends StatefulWidget {
  const DoctorScheduleScreen({super.key});

  @override
  State<DoctorScheduleScreen> createState() => _DoctorScheduleScreenState();
}

class _DoctorScheduleScreenState extends State<DoctorScheduleScreen> {
  int selectedindex=0;
  List options = [
  {    "name"  :   "Upcoming" ,
       "list"  : scheduleDoctors
  },

    {    "name"  :   "Complete" ,
         "list"  : scheduleDoctors
    },

    {    "name"  :   "Results" ,
      "list"  : scheduleDoctors
    },
  ];
  @override
  Widget build(BuildContext context){
    return SafeArea(child: Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.black12,
                    ),
                    color: Colors.white,
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    size: 25,
                  ),
                ),
                const Text(
                  "Schedule",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                const SizedBox(width: 25),
              ],
            ),
            const SizedBox(height: 20,),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black12)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...List.generate(options.length, (index) {
                    return InkWell(
                      onTap: () {
                        setState(() {
                          selectedindex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 25),
                        decoration: BoxDecoration(
                          color: selectedindex == index ? kPrimaryColor : Colors.transparent,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Text(
                          options[index]["name"] , // Ensure correct spelling
                          style: TextStyle(
                            color: selectedindex == index ? Colors.white : Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),
                      ),
                    );
                  }),
                ],
              )
            ),
            const SizedBox(height: 20),
            Expanded(
                child: ScheduleOption(options: scheduleDoctors,)
            )

          ],
        ),
      ),
    ));
  }
}
