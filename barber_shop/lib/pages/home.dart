import 'package:barber_shop/best%20salon/full%20details.dart';
import 'package:barber_shop/bottomnavigation/search.dart';
import 'package:barber_shop/helping%20widgets/best_salon.dart';
import 'package:barber_shop/helping%20widgets/popular_category.dart';
import 'package:barber_shop/helping%20widgets/popular_category_image.dart';
import 'package:flutter/material.dart';
//import 'package:http/http.dart' as http;

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map<String, dynamic>? paymentIntent;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Stack(children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                width: double.infinity,
                height: 200,
                color: Color.fromARGB(255, 222, 216, 216),
                child: Stack(
                  children: [
                    Image.asset(
                      'images/cut.jpg',
                      color: Colors.grey.withOpacity(0.4),
                      colorBlendMode: BlendMode.modulate,
                      width: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 80,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 1),
                          child: Text(
                            'Find and book best services',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 15, right: 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Search()));
                            },
                            child: Container(
                              width: double.infinity,
                              height: 45,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Color.fromARGB(225, 245, 153, 146)),
                              child: Row(
                                children: [
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Icon(
                                    Icons.search,
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Text(
                                    "Search salon services...",
                                    style: TextStyle(),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Popular Category",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    PopularCategory(
                        colour: Color.fromARGB(255, 237, 148, 141),
                        icon: Icons.menu,
                        name: "All"),
                    SizedBox(
                      width: 20,
                    ),
                    PopularCategoryImage(
                        colour: Color.fromARGB(255, 108, 203, 190),
                        image: "images/short-male-hair-shape.png",
                        name: "Hair"),
                    SizedBox(
                      width: 20,
                    ),
                    PopularCategory(
                        colour: Color.fromARGB(255, 219, 195, 99),
                        icon: Icons.face_sharp,
                        name: "Face"),
                    SizedBox(
                      width: 20,
                    ),
                    PopularCategory(
                        colour: Color.fromARGB(255, 181, 115, 206),
                        icon: Icons.back_hand_outlined,
                        name: "Nails"),
                    SizedBox(
                      width: 20,
                    ),
                    PopularCategoryImage(
                        colour: Color.fromARGB(255, 158, 226, 167),
                        image: "images/facial.png",
                        name: "Massage"),
                    SizedBox(
                      width: 20,
                    ),
                    PopularCategoryImage(
                        colour: Color.fromARGB(255, 228, 134, 191),
                        image: "images/hair-dye.png",
                        name: "Colour"),
                    SizedBox(
                      width: 30,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Best Salon",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  Best_Salon(
                    address:
                        "4th Avenue Shanthi Colony Main Road Shanthi Colony, Anna Nagar, Chennai",
                    image: "images/img.jpeg",
                    rating: "4.6 (100 reviews)",
                    shopname: "Green Trends",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Best_Salon(
                    address: "29, Dr Nair Rd,Pondy Bazaar,T. Nagar,Chennai",
                    image: "images/naturals.jpeg",
                    rating: "4.2 (87 reviews)",
                    shopname: "Naturals",
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Best_Salon(
                    address:
                        "1st Avenue,Old No 13/1&3, 1st Floor, Ashok Nagar, Chennai",
                    image: "images/tg.png",
                    rating: "4.2 (30 reviews)",
                    shopname: "Toni and Guy",
                  ),
                  SizedBox(
                    width: 20,
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Offers",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
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
                                "Haircut with Shave -  25 %",
                                style: TextStyle(fontSize: 20),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text("Toni & guy")
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
                SizedBox(
                  height: 20,
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
                  height: 20,
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
                                "Hair Colour -  50 %",
                                style: TextStyle(fontSize: 20),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.location_on_outlined),
                                  Text("Naturals")
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    )),
              ],
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ]),
    )
        // appBar: AppBar(title: Text("Stripe Payment")),
        // body: Center(
        //   child: TextButton(
        //     child: Text("Pay Now"),
        //     onPressed: () {
        //       payment();
        //     },
        //   ),
        // ),
        );
  }

//   Future<void> payment() async {
//     try {
//       Map<String, dynamic> body = {'amount': 10000, 'currency': "INR"};

//       var response = await http.post(Uri.parse(uri));
//     } catch (error) {
//       throw Exception(error);
//     }
//   }
}
