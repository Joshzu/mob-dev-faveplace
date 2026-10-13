import 'package:flutter/material.dart';

class FavoritePlaceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final username = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        title: Text("My Favorite Place"),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // USER PROFILE
              Row(
                children: [
                  CircleAvatar(
                    radius: 35,
                    child: Icon(
                      Icons.person,
                      size: 40,
                    ),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        username,
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text("Traveler"),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 30),

              Text(
                "My Favorite Place",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 10),

              Text(
                "Iloilo City",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 15),

              Expanded(
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQVNhasuMlwsA96805i8bKpjN2ns21L88Yk6vSGudg_WiqImyjzYBwzyeJU&s=10",
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              SizedBox(height: 15),

              Text(
                "Friendly people! thats why its called THE CITY OF LOVE!",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),

              SizedBox(height: 20),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(Icons.logout),
                  label: Text("LOGOUT"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
