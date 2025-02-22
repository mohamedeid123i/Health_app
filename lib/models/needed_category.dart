class CustomIcon {
  final String name;
  final String icon;

  CustomIcon({
    required this.name,
    required this.icon,
  });
}
List<CustomIcon> customIcons = [
  CustomIcon(name: "Appointment", icon: 'assets/imgs/appointment.png'),
  CustomIcon(name: "Hospital", icon: 'assets/imgs/hospital.png'),
  CustomIcon(name: "Covid-19", icon: 'assets/imgs/virus.png'),
  CustomIcon(name: "More", icon: 'assets/imgs/more.png'),
];
List<CustomIcon> healthNeeds = [
  CustomIcon(name: "Appointment", icon: 'assets/imgs/appointment.png'),
  CustomIcon(name: "Hospital", icon: 'assets/imgs/hospital.png'),
  CustomIcon(name: "Covid-19", icon: 'assets/imgs/virus.png'),
  CustomIcon(name: "Pharmacy", icon: 'assets/imgs/drug.png'),
];
List<CustomIcon> specialisedCared = [
  CustomIcon(name: "Diabetes", icon: 'assets/imgs/blood.png'),
  CustomIcon(name: "Health Care", icon: 'assets/imgs/health_care.png'),
  CustomIcon(name: "Dental", icon: 'assets/imgs/tooth.png'),
  CustomIcon(name: "Insured", icon: 'assets/imgs/insurance.png'),
];