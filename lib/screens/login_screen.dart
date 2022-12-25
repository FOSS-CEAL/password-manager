import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:password_manager/screens/signup_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  alignment: Alignment.center,
                  child: Image.asset(
                    "assets/images/password_manager.webp",
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                  ),
                ),
                const SizedBox(height: 40),
                const Text(
                  "Username :",
                  style: TextStyle(fontSize: 20, color: Colors.white),
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
                  "Password :",
                  style: TextStyle(fontSize: 20, color: Colors.white),
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
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  child: const Text("Login"),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("you dont yet have an account?"),
                    TextButton(
                      onPressed: () {
                        Get.to(const SignupScreen());
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          color: Colors.lightBlue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
