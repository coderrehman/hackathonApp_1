import 'package:hackathon_1/screens/account.dart';
import 'package:hackathon_1/screens/cart.dart';
import 'package:hackathon_1/screens/login.dart';
import 'package:hackathon_1/screens/productdiscrpscc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;

  late final List<Widget> _widgetOptions;

  @override
  void initState() {
    super.initState();
    _widgetOptions = <Widget>[
      homeScreen(),
      const Cartscc(),
      const AccountScc(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [ListTile()],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.green,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart, color: Colors.green),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.green),
            label: "",
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
      body: _widgetOptions[_selectedIndex],
    );
  }

  Widget homeScreen() {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  child: Row(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(left: 10, right: 5),
                        height: 50,
                        width: 50,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/ass2.png"))),
                      ),
                      const Text("Plantify",
                          style: TextStyle(color: Colors.green, fontSize: 25)),
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
                        Icons.notifications,
                        color: Colors.green,
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
        ),
        Container(
            margin: const EdgeInsets.only(top: 7, bottom: 10),
            child: Image.asset("assets/images/ass3.png")),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: const Icon(
                  Icons.search,
                  color: Colors.green,
                ),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16))),
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        const Padding(
          padding: EdgeInsets.all(6.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Text(
                  "Top Picks",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Top Picks",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Indoor",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Outdoor",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Seeds",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  "Plants",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const showproduct()));
          },
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Image.asset("assets/images/ass5.png"),
              ),
              Positioned(
                left: 180,
                bottom: 40,
                child: SizedBox(
                    height: 140, child: Image.asset("assets/images/ass4.png")),
              )
            ],
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        Stack(
          children: [
            Image.asset("assets/images/ass6.png"),
            Positioned(
              left: 180,
              bottom: 40,
              child: SizedBox(
                  height: 140, child: Image.asset("assets/images/ass7.png")),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Image.asset("assets/images/ass8.png"),
        const SizedBox(
          height: 50,
        ),
        Stack(
          children: [
            Image.asset("assets/images/ass9.png"),
            Positioned(
              left: 180,
              bottom: 40,
              child: SizedBox(
                  height: 140, child: Image.asset("assets/images/ass10.png")),
            )
          ],
        ),
        const SizedBox(
          height: 50,
        ),
        Stack(children: [
          Image.asset("assets/images/ass11.png"),
          Positioned(
            left: 180,
            bottom: 40,
            child: SizedBox(
                height: 140, child: Image.asset("assets/images/ass12.png")),
          )
        ]),
        const SizedBox(
          height: 50,
        ),
        Image.asset("assets/images/ass13.png"),
        const SizedBox(
          height: 50,
        ),
        Stack(children: [
          Image.asset("assets/images/ass14.png"),
          Positioned(
            left: 180,
            bottom: 40,
            child: SizedBox(
                height: 140, child: Image.asset("assets/images/ass15.png")),
          ),
        ]),
      ]),
    );
  }
}







// import 'package:cs1/screens/login.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class BottomBarScreen extends StatefulWidget {
//   const BottomBarScreen({super.key});

//   @override
//   State<BottomBarScreen> createState() => _BottomBarScreenState();
// }

// class _BottomBarScreenState extends State<BottomBarScreen> {
//   int _selectedIndex = 0;

//   static final List<Widget> _widgetOptions = <Widget>[
//     () => homeScreen(),
//     Text('Search Page'),
//     Text('Profile Page'),
//   ];

//   void _onItemTapped(int index) {
//     setState(() {
//       _selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final mdqh = MediaQuery.of(context).size.height;
//     final mdqw = MediaQuery.of(context).size.width;
//     return Scaffold(
//         bottomNavigationBar: BottomNavigationBar(
//           type: BottomNavigationBarType.fixed,
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//                 icon: Icon(
//                   Icons.home,
//                   color: Colors.green,
//                 ),
//                 label: ""),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.favorite, color: Colors.green), label: ""),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.shopping_cart, color: Colors.green),
//                 label: ""),
//             BottomNavigationBarItem(
//                 icon: Icon(Icons.person, color: Colors.green), label: ""),
//           ],
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.blue,
//           onTap: _onItemTapped,
//         ),
//         body: _widgetOptions[_selectedIndex]);
//   }

//   SingleChildScrollView homeScreen() {
//     return SingleChildScrollView(
//       child: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.all(8),
//             child: Row(
//               children: [
//                 Expanded(
//                   flex: 4,
//                   child: Container(
//                     child: Row(
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.only(left: 10, right: 5),
//                           height: 50,
//                           width: 50,
//                           decoration: const BoxDecoration(
//                               image: DecorationImage(
//                                   image: AssetImage("assets/images/ass2.png"))),
//                         ),
//                         const Text("Plantify",
//                             style:
//                                 TextStyle(color: Colors.green, fontSize: 25)),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Container(
//                     child: const Row(
//                       mainAxisAlignment: MainAxisAlignment.end,
//                       children: [
//                         Icon(
//                           Icons.notifications,
//                           color: Colors.green,
//                         ),
//                         Icon(
//                           Icons.category_rounded,
//                           color: Colors.green,
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           Container(
//               margin: const EdgeInsets.only(top: 7, bottom: 10),
//               child: Image.asset("assets/images/ass3.png")),
//           Padding(
//             padding: const EdgeInsets.all(10.0),
//             child: TextField(
//               decoration: InputDecoration(
//                   hintText: "Search",
//                   prefixIcon: const Icon(
//                     Icons.search,
//                     color: Colors.green,
//                   ),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(16))),
//             ),
//           ),
//           const SizedBox(
//             height: 7,
//           ),
//           const SingleChildScrollView(
//             scrollDirection: Axis.horizontal,
//             child: Row(
//               children: [
//                 Text(
//                   "Top Picks",
//                   style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   width: 30,
//                 ),
//                 Text(
//                   "Top Picks",
//                   style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   width: 30,
//                 ),
//                 Text(
//                   "Indoor",
//                   style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   width: 30,
//                 ),
//                 Text(
//                   "Outdoor",
//                   style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   width: 30,
//                 ),
//                 Text(
//                   "Seeds",
//                   style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//                 SizedBox(
//                   width: 30,
//                 ),
//                 Text(
//                   "Plants",
//                   style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 15,
//                       fontWeight: FontWeight.w600),
//                 ),
//               ],
//             ),
//           ),
//           const SizedBox(
//             height: 10,
//           ),
//           Stack(
//             children: [
//               Padding(
//                 padding: const EdgeInsets.only(top: 20),
//                 child: Image.asset("assets/images/ass5.png"),
//               ),
//               Positioned(
//                 right: 0,
//                 top: 0,
//                 child: SizedBox(
//                     height: 200, child: Image.asset("assets/images/ass4.png")),
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           Stack(
//             children: [
//               Image.asset("assets/images/ass6.png"),
//               Positioned(
//                 left: 180,
//                 bottom: 40,
//                 child: SizedBox(
//                     height: 140, child: Image.asset("assets/images/ass7.png")),
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           Image.asset("assets/images/ass8.png"),
//           const SizedBox(
//             height: 50,
//           ),
//           Stack(
//             children: [
//               Image.asset("assets/images/ass9.png"),
//               Positioned(
//                 left: 180,
//                 bottom: 40,
//                 child: SizedBox(
//                     height: 140, child: Image.asset("assets/images/ass10.png")),
//               )
//             ],
//           ),
//           const SizedBox(
//             height: 50,
//           ),
//           Stack(children: [
//             Image.asset("assets/images/ass11.png"),
//             Positioned(
//               left: 180,
//               bottom: 40,
//               child: SizedBox(
//                   height: 140, child: Image.asset("assets/images/ass12.png")),
//             )
//           ]),
//           const SizedBox(
//             height: 50,
//           ),
//           Image.asset("assets/images/ass13.png"),
//           const SizedBox(
//             height: 50,
//           ),
//           Stack(children: [
//             Image.asset("assets/images/ass14.png"),
//             Positioned(
//               left: 180,
//               bottom: 40,
//               child: SizedBox(
//                   height: 140, child: Image.asset("assets/images/ass15.png")),
//             ),
//           ]),
//         ],
//       ),
//     );
//   }
// }
