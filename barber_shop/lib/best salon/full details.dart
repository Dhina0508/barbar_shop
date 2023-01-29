import 'package:barber_shop/helping%20widgets/expandedtext.dart';
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
            crossAxisAlignment: CrossAxisAlignment.center,
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
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Our Salon Specialists",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
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
                height: 20,
              ),
              Divider(
                thickness: 1,
                height: 10,
                color: Color.fromARGB(255, 212, 209, 209),
              ),
              SizedBox(
                height: 10,
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
                height: 5,
              ),
              Divider(
                thickness: 4,
                height: 10,
                color: Color.fromARGB(255, 212, 209, 209),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 25.0),
                    child: Text(
                      "About",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10),
                  child: ExpandedText(
                      text:
                          "       Green Trends offers trendy haircuts and color services, complete skin care solutions and bridal packages, at affordable rates. Equipped with the knowledge on a wide variety of professional hair & skin care products, our well trained professional stylists provide friendly service. Conveniently close, we're located right in your neighbourhood. You can also find your favorite world class hair care brands, like L'Oreal, Matrix, Wella, Schwarzkopf and many more at Green Trends.")),
              SizedBox(
                height: 10,
              ),
              Divider(
                color: Colors.black54,
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Opening Hours",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      "Monday - Friday",
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                  ),
                  Text(
                    "9.00 am - 9.00 pm",
                    style: TextStyle(
                        color: Color.fromARGB(255, 241, 103, 93), fontSize: 18),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Divider(
                    color: Colors.black54,
                    thickness: 1,
                    indent: 15,
                    endIndent: 15,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 15.0),
                        child: Text(
                          "Location",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Text(
                      "4th Avenue Shanthi Colony Main Road Shanthi Colony, Anna Nagar, Chennai",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.directions,
                        size: 20,
                        color: Color.fromARGB(255, 245, 96, 85),
                      ),
                      Text(
                        "Get directions - 5.2 Km",
                        style: TextStyle(
                            color: Color.fromARGB(255, 254, 111, 101)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(
                      "images/map.png",
                      width: double.infinity,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.black54,
                thickness: 1,
                indent: 15,
                endIndent: 15,
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      "Current packages & Offers",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                  width: 300,
                  height: 100,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Color.fromARGB(134, 172, 224, 238)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Massage and Nail cut-  35 %",
                              style: TextStyle(fontSize: 20),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.location_on_outlined),
                                Text("Green Trends")
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  )),
              SizedBox(
                height: 70,
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 245, 133, 125)),
                    onPressed: () {},
                    child: Container(
                      width: 300,
                      height: 50,
                      child: Center(
                        child: Text(
                          "Book Appointment",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              )
            ],
          ),
        ));
  }
}
