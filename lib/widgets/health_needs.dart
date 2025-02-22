import 'package:flutter/material.dart';
import 'package:untitled4/utils/colors.dart';
import '../models/needed_category.dart';

class HealthNeeds extends StatelessWidget {
  const HealthNeeds({super.key});

  @override
  Widget build(BuildContext context) {
    return
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: SizedBox(
          height: 130, // Constraining height to prevent infinite space issues
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: customIcons.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
                        if(index == customIcons.length -1) {
                          showModalBottomSheet(
                              showDragHandle: true,
                              backgroundColor: Colors.white,
                              context: context,
                              builder: (context) {
                                return Container(
                                  height: 400,
                                  width: double.infinity,
                                  padding:  const EdgeInsets.all(20),
                                  child:  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        "Health Needs",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 130,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount:healthNeeds.length ,
                                            itemBuilder: (context,index){
                                              return Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        width: 80,
                                                        height: 80,
                                                        padding: const EdgeInsets.all(20),
                                                        decoration: const BoxDecoration(
                                                          color: secondaryBgColor,
                                                          shape: BoxShape.circle,
                                                        ),
                                                        child: Image.asset(healthNeeds[index].icon),
                                                      ),
                                                      const SizedBox(height: 10,),
                                                      Text(healthNeeds[index].name),
                                                    ],
                                                  ),
                                                  SizedBox(width: 5,),
                                                ],
                                              );
                                            }),
                                      ),
                                      const SizedBox(height: 30),
                                      const Text(
                                        "Specialized Care",
                                        style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 130,
                                        child: ListView.builder(
                                            scrollDirection: Axis.horizontal,
                                            itemCount:specialisedCared.length ,
                                            itemBuilder: (context,index){
                                              return Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Column(
                                                    children: [
                                                      Container(
                                                        width: 80,
                                                        height: 80,
                                                        padding: const EdgeInsets.all(20),
                                                        decoration: const BoxDecoration(
                                                          color: secondaryBgColor,
                                                          shape: BoxShape.circle,
                                                        ),
                                                        child: Image.asset(specialisedCared[index].icon),
                                                      ),
                                                      const SizedBox(height: 10,),
                                                      Text(specialisedCared[index].name),
                                                    ],
                                                  ),
                                                  SizedBox(width: 5,),
                                                ],
                                              );
                                            }),
                                      ),
                                    ],
                                  ),
                                );
                              }
                          );
                        }

                      },
                      child: Container(
                        height: 80,
                        width: 80,
                        padding: const EdgeInsets.all(20),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: secondaryBgColor,
                        ),
                        child: Image.asset(customIcons[index].icon,),
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      customIcons[index].name,
                      style: const TextStyle(fontSize: 14),

                    ),
                  ],
                ),
              );
            },
          ),
        ),
    );
  }
}
