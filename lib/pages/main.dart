import 'package:flutter/material.dart';
import 'package:untitled4/pages/doctor_schedule_screen.dart';
import 'package:untitled4/pages/homepage.dart';
import 'package:untitled4/utils/colors.dart';
import 'package:untitled4/widgets/doctorprofile.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  int selected_index = 0;
  final List pages  = [
    HealthappHomePage(),
    DoctorScheduleScreen(),
    Scaffold(),
    Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.black26,
        selectedItemColor: kPrimaryColor,
        currentIndex: selected_index,
        type: BottomNavigationBarType.fixed,
        onTap: (value){
          setState(() {
            selected_index = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble_outline),
            label: 'Chat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      body: pages[selected_index],
    );
  }
}
