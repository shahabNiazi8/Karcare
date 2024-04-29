import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:test_app/auth/verification.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Register", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100),
              Row(
                children: [
                  Text("Hey",
                      style: TextStyle(fontSize: 20, color: Color(0xFF757678))),
                  SizedBox(width: 10),
                  Image(
                    image: AssetImage("assets/hand.png"),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Text("Welcome to",
                      style: TextStyle(
                          fontSize: 27,
                          color: Color(0xFF1C1C1C),
                          fontWeight: FontWeight.w800)),
                  SizedBox(width: 10),
                  Image(
                    image: AssetImage("assets/text.png"),
                  )
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Text(
                "Enter Your Name",
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
              ),
              SizedBox(
                height: 5,
              ),
              SizedBox(
                height: 60,
                width: double.infinity,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: 'your name',
                    contentPadding: EdgeInsets.symmetric(horizontal: 15),
                    hintStyle: TextStyle(color: Color(0xFF8A8B7A)),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: EdgeInsets.only(right: 182),
                child: Text(
                  "Enter Your mobile number",
                  style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 70,
                width: double.infinity,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: '(+92) 3XXXXXXXXXX',
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 15),
                    hintStyle: TextStyle(color: Color(0xFF8A8B7A)),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                      builder: (BuildContext context) => const verification()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(horizontal: 1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [Color(0xFF0182D9), Color(0xFF0045A1)],
                    ),
                  ),
                  child: const Text(
                    "Send OTP",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
