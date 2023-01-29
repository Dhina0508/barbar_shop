import 'package:flutter/material.dart';

class PopularCategoryImage extends StatelessWidget {
  final String image;
  final String name;
  final Color colour;
  const PopularCategoryImage(
      {Key? key, required this.colour, required this.image, required this.name})
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
            Image.asset(
              image,
              width: 35,
              height: 30,
            ),
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
