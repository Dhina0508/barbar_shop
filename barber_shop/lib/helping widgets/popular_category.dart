import 'package:flutter/material.dart';

class PopularCategory extends StatelessWidget {
  final IconData icon;
  final String name;
  final Color colour;
  const PopularCategory(
      {Key? key, required this.colour, required this.icon, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 60,
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(8), color: colour),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon),
            Text(
              name,
              style: TextStyle(fontSize: 13),
            )
          ],
        ),
      ),
    );
  }
}
