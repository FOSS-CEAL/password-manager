import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_screen.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40),
              const Text(
                "username",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 20),
              const TextField(
                decoration: InputDecoration(
                  hintText: "Enter your username",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              const Text(
                "confirm password",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const SizedBox(height: 20),
              const TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter your password",
                  hintStyle: TextStyle(color: Colors.white),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () {},
                child: const Text("sign up"),
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  const Text("have an account already? "),
                  TextButton(
                    onPressed: () {
                      Get.to(const LoginScreen());
                    },
                    child: const Text("login"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
