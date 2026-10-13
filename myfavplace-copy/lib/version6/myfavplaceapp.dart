import 'package:flutter/material.dart';

class MyFavePlaceApp extends StatefulWidget {
  @override
  State<MyFavePlaceApp> createState() => _MyFavePlaceAppState();
}

class _MyFavePlaceAppState extends State<MyFavePlaceApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Favorite Place"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.teal.shade50,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50,
                        backgroundImage: NetworkImage(
                            "https://static.vecteezy.com/system/resources/previews/024/044/193/original/school-kids-clipart-transparent-background-free-png.png"),
                      ),
                      SizedBox(width: 15),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Josh Ayupan "),
                          SizedBox(height: 5),
                          Row(
                            children: [
                              Icon(Icons.location_city),
                              SizedBox(width: 5),
                              Text("Manila, Philippines"),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(15),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    //color: Colors.yellow.shade50,
                  ),
                  child: Image.network(
                    "https://tse3.mm.bing.net/th/id/OIP.5vNMEaE4IckIZS2cNEQ-eQHaE8?r=0&rs=1&pid=ImgDetMain&o=7&rm=3",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
