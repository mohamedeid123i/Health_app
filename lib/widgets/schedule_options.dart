import 'package:flutter/material.dart';
import 'package:untitled4/utils/colors.dart';
import 'package:untitled4/widgets/doctor_details.dart';
import 'package:untitled4/widgets/doctorprofile.dart';

class ScheduleOption extends StatelessWidget {
  final List options;
  const ScheduleOption({super.key, required this.options});
  final int selectedindex = 0;
  @override
  Widget build(BuildContext context){
    return ListView.builder(
      itemCount: options.length,
      itemBuilder: (context,index){
      return
            Column(
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Color(0xFFC9D1DF),
                      borderRadius: BorderRadius.circular(20)
                    ),
                    child: Column(
                      children: [
                        DoctorDetails(name: options[index].name, position: options[index].position, profile: options[index].profile,),
                        SizedBox(height: 5,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ElevatedButton(
                                onPressed: (){
                            }, child: Text("Cancel") ),
                            ElevatedButton(onPressed: (){
                            }, child: Text("Rescheduled") ),

                          ],
                        )
                      ],
                    )),
                SizedBox(height: 20,)
              ],
            );
    },
    );
  }
}
