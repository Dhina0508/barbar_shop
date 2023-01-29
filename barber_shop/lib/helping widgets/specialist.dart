import 'package:flutter/material.dart';

class Specialist extends StatelessWidget {
  final String name;
  final String speciality;
  final String image;
  Specialist(
      {Key? key,
      required this.name,
      required this.speciality,
      required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.asset(
            image,
            width: 45,
            height: 55,
            fit: BoxFit.cover,
          ),
        ),
        Text(
          name,
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        Text(
          speciality,
          style: TextStyle(color: Colors.grey, fontSize: 10),
        )
      ],
    );
  }
}
