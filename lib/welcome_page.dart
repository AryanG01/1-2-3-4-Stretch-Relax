import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lifehack_nus/auth_controller.dart';
import 'package:lifehack_nus/timer_page.dart';

// ignore: must_be_immutable
class WelcomePage extends StatelessWidget {
  String email;
  WelcomePage({Key? key, required this.email}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            width: w,
            height: h * 0.275,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("images/orangeandblue.png"),
                    fit: BoxFit.cover)),
            child: const Column(children: [
              SizedBox(
                height: 125,
              ),
              CircleAvatar(
                backgroundColor: Colors.white70,
                radius: 40,
                backgroundImage: AssetImage("images/profile.png"),
              )
            ]),
          ),
          const SizedBox(
            height: 60,
          ),
          Container(
            width: w,
            margin: const EdgeInsets.only(left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Welcome",
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  email,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 100,
          ),
          RichText(
              text: TextSpan(
            text: "Time to get down!",
            style: TextStyle(
              color: Colors.grey[500],
              fontSize: 12,
            ),
            children: [
              TextSpan(
                  text: " Timer (Click here)",
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () => Get.to(() => const TimerPage()))
            ],
          )),
          GestureDetector(
            onTap: () {
              AuthController.instance.logOut();
            },
            child: Container(
              width: w * 0.5,
              height: h * 0.08,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: const DecorationImage(
                      image: AssetImage("images/signinimage.jpeg"),
                      fit: BoxFit.cover)),
              child: const Center(
                child: Text(
                  "Log Out",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
