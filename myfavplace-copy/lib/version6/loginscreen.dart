import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameCtrl = TextEditingController();
  TextEditingController passwordCtrl = TextEditingController();
  String errormsg = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Fave Place"),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.account_circle_rounded, size: 50),
              const SizedBox(height: 20),
              const Text(
                "Login to your Profile",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              TextField(
                controller: usernameCtrl,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  hintText: "Enter your username",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: passwordCtrl,
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                    hintText: "Enter your password",
                    prefixIcon: Icon(Icons.lock)),
              ),
              SizedBox(height: 10),
              Text(errormsg, style: TextStyle(color: Colors.redAccent)),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      String username = usernameCtrl.text.trim();
                      String password = passwordCtrl.text;
                      if (username.isEmpty || password.isEmpty) {
                        setState(() {
                          errormsg = "Please input your the missing details";
                          print(errormsg);
                        });
                      } else {
                        Navigator.pushNamed(
                          context,
                          '/profile',
                          arguments: username,
                        );
                      }
                    },
                    child: Text("Login")),
              )
            ],
          ),
        ),
      ),
    );
  }
}
