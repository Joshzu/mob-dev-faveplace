import 'package:flutter/material.dart';

class FavoritePlaceLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("My Favorite Place"), centerTitle: true),
        body: Row(
          children: [
            Container(
              color: Colors.blue,
              width: 200,
              height: 300,
              child: Padding(
                padding: EdgeInsets.all(60),
                child: Center(child: Icon(Icons.account_balance)),
              ),
            ),
            Expanded(
              child: Center(
                child: Container(
                  color: Colors.yellow,
                  child: Text("Iloilo City"),
                ),
              ),
            ),
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Padding(
                padding: EdgeInsets.all(60.0),
                child: Center(child: Icon(Icons.favorite)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
