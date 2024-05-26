import 'package:hackathon_1/screens/home.dart';
import 'package:hackathon_1/screens/signup.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  final emailtextcont = TextEditingController();
  final TextEditingController passtextcont = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final mdqh = MediaQuery.of(context).size.height;
    final mdqw = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 150,
            left: mdqw / 2.45,
            child: Row(
              children: [
                Image.asset("assets/images/ass2.png"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Plantify",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 240),
            child: Column(
              children: [
                Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w400,
                      color: Colors.green),
                ),
                SizedBox(
                  height: 40,
                ),
                textField(
                    "Email", emailtextcont, Color.fromRGBO(71, 90, 97, 1)),
                SizedBox(
                  height: 20,
                ),
                textField(
                    "Password", passtextcont, Color.fromRGBO(71, 90, 97, 1)),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildBtn(
                      context,
                      "Login",
                      () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => BottomBarScreen())));
                      },
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    buildBtn(
                      context,
                      "Signup",
                      () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: ((context) => SignUpScreen())));
                      },
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          "Forget Pass",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

Widget textField(
    String hintText, TextEditingController controller, Color borderColor) {
  return Padding(
    padding: const EdgeInsets.only(right: 16, left: 16),
    child: TextField(
      textAlign: TextAlign.center,
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: borderColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30))),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 2.0,
              color: borderColor,
            ),
            borderRadius: BorderRadius.all(Radius.circular(30))),
      ),
    ),
  );
}

Widget buildBtn(BuildContext context, String text, VoidCallback onPressed) {
  return Container(
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(18)),
    height: 40,
    width: 150,
    child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15,
                color: Colors.white)),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green,
        )),
  );
}
