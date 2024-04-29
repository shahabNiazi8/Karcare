import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/auth/LoginPage.dart';

class StartUp extends StatelessWidget {
  const StartUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      body: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              "assets/car1.png",
            ),
            const SizedBox(
              height: 100,
            ),
            const Text(
              "A service station in your Pocket",
              style: TextStyle(
                  color: Color(0xFFF5F5F5),
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (BuildContext context) => const LoginPage()));
              },
              child: Container(
                height: 50,
                width: double.infinity,
                alignment: Alignment.center,
                margin:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [Color(0xFF0182D9), Color(0xFF0045A1)],
                  ),
                ),
                child: const Text(
                  "Get Started",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
