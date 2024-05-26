import 'package:hackathon_1/screens/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Stack(children: [
              Container(
                color: Colors.green,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(child: Image.asset("assets/images/ass1.png")),
              ),
              const Padding(
                padding: EdgeInsets.only(bottom: 40),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "Plantify",
                        style: TextStyle(color: Colors.white, fontSize: 70),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: [
                      const Text(
                        'GET READY',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const Text(
                        'BE HIGYENIC',
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Jelajahi AiLearn untuk menambah kemampuanmu dalam mengoperasikan Adobe Illustrator',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.green,
                          fontSize: 18,
                        ),
                      ),
                      const SizedBox(height: 40),
                      Center(
                        child: Container(
                          height: 50,
                          width: 300,
                          child: ElevatedButton(
                            style: const ButtonStyle(
                                backgroundColor:
                                    MaterialStatePropertyAll(Colors.green)),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => LoginScreen()));
                            },
                            child: const Text("login",
                                style: TextStyle(
                                    color: Colors.greenAccent, fontSize: 20)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
