import 'package:barber_shop/best%20salon/full%20details.dart';
import 'package:flutter/material.dart';

class Best_Salon extends StatelessWidget {
  final String image;
  final String shopname;
  final String address;
  final String rating;

  const Best_Salon(
      {Key? key,
      required this.address,
      required this.image,
      required this.rating,
      required this.shopname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => FullDetails()));
        },
        child: Container(
          width: 250,
          height: 200,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              width: 250,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Column(
          children: [
            SizedBox(
              height: 130,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FullDetails()));
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(207, 222, 139, 133)),
                  width: 250,
                  height: 120,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              shopname,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                            Icon(
                              Icons.favorite_border,
                              color: Colors.white,
                            )
                          ],
                        ),
                        Text(
                          address,
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Divider(
                            thickness: 1,
                            endIndent: 2,
                            indent: 2,
                            height: 1,
                            color: Colors.white),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.yellow,
                            ),
                            Text(
                              rating,
                              style:
                                  TextStyle(fontSize: 14, color: Colors.white),
                            )
                          ],
                        )
                      ],
                    ),
                  )),
            ),
          ],
        ),
      )
    ]);
  }
}
