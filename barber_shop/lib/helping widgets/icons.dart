import 'package:flutter/material.dart';

class Iconss extends StatelessWidget {
  final IconData icon;
  final String name;
  const Iconss({Key? key, required this.icon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon, size: 25, color: Color.fromARGB(255, 249, 123, 114)),
        SizedBox(
          height: 3,
        ),
        Text(
          name,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 249, 123, 114)),
        )
      ],
    );
  }
}
