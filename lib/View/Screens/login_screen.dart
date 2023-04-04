import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController _emaileditingController;
  late TextEditingController _passwordeditingController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _emaileditingController = TextEditingController();
    _passwordeditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _emaileditingController.dispose();
    _passwordeditingController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipPath(
            clipper: MyCliper(),
            child: Container(
              height: 300,
              width: double.infinity,
              color: Colors.blue,
              child: const Center(
                child: Text(
                  "Login",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: TextFormField(
              controller: _emaileditingController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  hintText: "Enter your Email",
                  //label: Text("Enter your Email"),
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
              controller: _passwordeditingController,
              decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  suffixIcon: Icon(Icons.remove_red_eye),
                  hintText: "Enter your Password",
                  labelText: "Password",
                  border: OutlineInputBorder()),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 65,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: ElevatedButton(
                onPressed: () async => await performancLogin(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                ),
                child: Text("Login")),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 60,
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: OutlinedButton(
                onPressed: () =>
                    Navigator.pushNamed(context, '/register_screen'),
                child: const Text("Sign Up")),
          ),
        ],
      ),
    );
  }

  Future performancLogin() async {
    if (_checkedSuccessfuly()) {
      return await _login();
    }
  }

  Future _login() async {
    return await Navigator.pushNamed(context, '/home_screen');
  }

  bool _checkedSuccessfuly() {
    if (_emaileditingController.text.isNotEmpty &&
        _passwordeditingController.text.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  }
}

class MyCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height / 1.25);
    path.cubicTo(size.width / 2 * 0.6, size.height * 0.5, size.width,
        size.height * 1.2, size.width * 1.2, size.height / 1.5);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    throw UnimplementedError();
  }
}
