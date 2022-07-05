import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.black87,
      body: SizedBox(
        height: size.height,
        width: size.width,
        child: Stack(children: [
          Positioned(
              left: -50,
              top: -50,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 216, 38, 98),
                    shape: BoxShape.circle),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              )),
          Positioned(
              top: size.height * 0.3,
              right: -50,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 39, 222, 121),
                    shape: BoxShape.circle),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 200,
                    sigmaY: 200,
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    color: Colors.transparent,
                  ),
                ),
              )),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                      left: 15, right: 5, bottom: 0, top: 35),
                  height: 350,
                  width: 350,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromARGB(40, 253, 18, 198),
                          Color.fromARGB(40, 11, 255, 101),
                        ]),
                    shape: BoxShape.circle,
                    border: GradientBoxBorder(
                      width: 5,
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        colors: [
                          Color.fromRGBO(255, 112, 222, 1),
                          Color.fromARGB(15, 0, 0, 0),
                          Color.fromARGB(25, 0, 0, 0),
                          Color.fromARGB(255, 11, 255, 101),
                        ],
                      ),
                    ),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(
                              'assets/images/image 81.png',
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const Text(
                  'Watch movies in\n Virtual Reality',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Download and watch offline\n wherever you are ',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: Colors.white),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  width: 200,
                  height: 60,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: const GradientBoxBorder(
                      width: 4,
                      gradient: LinearGradient(colors: [
                        Color.fromARGB(255, 253, 18, 198),
                        Color.fromARGB(255, 11, 255, 101),
                      ]),
                    ),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      gradient: const LinearGradient(colors: [
                        Color.fromARGB(70, 253, 18, 198),
                        Color.fromARGB(70, 11, 255, 101),
                      ]),
                    ),
                    child: const Center(
                        child: Text(
                      'Sign up',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.white),
                    )),
                  ),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
