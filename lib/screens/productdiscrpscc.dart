import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class showproduct extends StatelessWidget {
  const showproduct({super.key});

  @override
  Widget build(BuildContext context) {
    final mdqh = MediaQuery.of(context).size.height;
    final mdqw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/ass16.png"),
              Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        flex: 4,
                        child: Container(
                          child: Row(
                            children: [
                              Container(
                                margin:
                                    const EdgeInsets.only(left: 4, right: 5),
                                height: 50,
                                width: 50,
                                decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/ass2.png"))),
                              ),
                              const Text("Plantify",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 18)),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(
                                Icons.search,
                                color: Colors.green,
                              ),
                              SizedBox(
                                width: 7,
                              ),
                              Icon(
                                Icons.category_rounded,
                                color: Colors.green,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),

                  //
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Air purifyer",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.w600),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.water,
                        color: Colors.green,
                      ),
                      SizedBox(
                        width: mdqw * 0.45,
                      ),
                      Container(
                        height: 25,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(300),
                          color: Colors.green,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(
                              size: 20,
                              Icons.star,
                              color: Colors.white,
                            ),
                            Text(
                              "4.5",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),

              //
              Positioned(
                top: 140,
                left: 10,
                child: Column(
                  children: [
                    Text(
                      "Watermelon",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w600,
                          color: Colors.black54),
                    ),
                    Text("Peperoma",
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54))
                  ],
                ),
              ),
              Positioned(
                left: 150,
                top: 80,
                child: SizedBox(
                    height: 350, child: Image.asset("assets/images/ass7.png")),
              ),
              Positioned(
                top: 250,
                left: 40,
                child: Column(
                  children: [
                    Text("Price",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54)),
                    Text("350",
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Colors.black54))
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
