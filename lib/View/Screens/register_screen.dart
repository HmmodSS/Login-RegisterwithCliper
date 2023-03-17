import 'package:flutter/material.dart';

import 'login_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: MyCliper(),
                  child: Container(
                    height: height / 3,
                    width: double.infinity,
                    color: Colors.blue,
                    child: const Center(
                      child: Text(
                        "Register",
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30,
                      )),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    hintText: "Enter your Name",
                    //label: Text("Enter your Email"),
                    labelText: "Name",
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email),
                    hintText: "Enter your Email",
                    labelText: "Email",
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: "Enter your Password",
                    labelText: "Password",
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    suffixIcon: Icon(Icons.remove_red_eye),
                    hintText: "Enter your Confident Password",
                    labelText: "Confident Password",
                    border: OutlineInputBorder()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 65,
              width: width * 0.9,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home_screen');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                  ),
                  child: const Text("Register")),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              width: width * 0.9,
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(50)),
              child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Login")),
            ),
          ],
        ),
      ),
    );
  }
}
