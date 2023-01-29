import 'package:barber_shop/helping%20widgets/icons.dart';
import 'package:barber_shop/helping%20widgets/specialist.dart';
import 'package:barber_shop/helping%20widgets/star.dart';
import 'package:flutter/material.dart';

class FullDetails extends StatefulWidget {
  FullDetails({Key? key}) : super(key: key);

  @override
  State<FullDetails> createState() => _FullDetailsState();
}

class _FullDetailsState extends State<FullDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Icon(Icons.favorite_border),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Image.asset(
                    "images/img.jpeg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: 250,
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        SizedBox(
                          height: 150,
                        ),
                        Container(
                          height: 100,
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Text(
                                      "Green Trends",
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Text(
                                      "( UniSex )",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "4th Avenue Shanthi Colony Main Road Shanthi Colony, Anna Nagar, Chennai",
                                  style: TextStyle(
                                      fontSize: 15, color: Colors.white),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Row(
                                  children: [
                                    Star(),
                                    Star(),
                                    Star(),
                                    Star(),
                                    Star(),
                                    SizedBox(
                                      width: 7,
                                    ),
                                    Text(
                                      "(100 Reviews)",
                                      style: TextStyle(
                                          fontSize: 13, color: Colors.white),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                        right: 8,
                                      ),
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          border: Border.all(
                                              color: Colors.white, width: 1),
                                        ),
                                        width: 55,
                                        height: 20,
                                        child: Center(
                                          child: Text(
                                            "Open",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Image.asset("images/globe.png",
                          width: 20,
                          height: 20,
                          color: Color.fromARGB(255, 249, 123, 114)),
                      SizedBox(
                        height: 3,
                      ),
                      Text(
                        "Website",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 249, 123, 114)),
                      )
                    ],
                  ),
                  Iconss(icon: Icons.call, name: "Call"),
                  Iconss(icon: Icons.location_on, name: "Direction"),
                  Iconss(icon: Icons.share, name: "Share")
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 1,
                height: 10,
                color: Colors.black,
                endIndent: 20,
                indent: 20,
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Text(
                  "Our Salon Specialists",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    SizedBox(
                      width: 15,
                    ),
                    Specialist(
                        name: "Dhina",
                        speciality: "Manager",
                        image: "images/dhina.jpg"),
                    SizedBox(
                      width: 15,
                    ),
                    Specialist(
                        name: "Godwin",
                        speciality: "Hair Stylist",
                        image: "images/godwin.jpg"),
                    SizedBox(
                      width: 15,
                    ),
                    Specialist(
                        name: "Eloo",
                        speciality: "Hair washer",
                        image: "images/eloo.jpg"),
                    SizedBox(
                      width: 15,
                    ),
                    Specialist(
                        name: "Deepak",
                        speciality: "Hair Straightning",
                        image: "images/deepak.jpg"),
                    SizedBox(
                      width: 15,
                    ),
                    Specialist(
                        name: "Dani",
                        speciality: "Hair Stylist",
                        image: "images/dani.jpg"),
                    SizedBox(
                      width: 15,
                    ),
                    Specialist(
                        name: "Bharath",
                        speciality: "M.Artist",
                        image: "images/bharath.jpg"),
                    SizedBox(
                      width: 15,
                    ),
                    Specialist(
                        name: "Ambress",
                        speciality: "Makeup ",
                        image: "images/ambress.jpg"),
                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "About",
                      style: TextStyle(
                        fontSize: 16,
                        color: Color.fromARGB(255, 231, 99, 89),
                      ),
                    ),
                    Text(
                      "Service",
                      style: TextStyle(fontSize: 16),
                    ),
                    Text("Gallery", style: TextStyle(fontSize: 16)),
                    Text(
                      "Reviews",
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Divider(
                thickness: 5,
                height: 10,
                color: Colors.grey,
                endIndent: 20,
                indent: 20,
              )
            ],
          ),
        ));
  }
}
