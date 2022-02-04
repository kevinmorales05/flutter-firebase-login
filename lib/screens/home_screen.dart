import 'package:flutter/material.dart';
import 'package:login_flutter/screens/login_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(
                      height: 180,
                      child: Image.asset(
                        "assets/1.png",
                        fit: BoxFit.contain,
                      )),
                  const Text("Welcome back",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Name",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const Text(
                    "Email",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  ActionChip(label: const Text("Logout"), onPressed: () {
                    Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                  })
                ])),
      ),
    );
  }
}
