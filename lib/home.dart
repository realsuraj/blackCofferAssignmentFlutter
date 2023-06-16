import 'package:flutter/material.dart';

import 'cards.dart';


class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            
            children: 
            [
              Row(
                children: [
                 
        Container(
          margin: EdgeInsets.all(10),
          height: 40,
          width: MediaQuery.of(context).size.width * 0.8,
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              hintStyle: TextStyle(color: Colors.black45, height: 4),
              prefixIcon: IconButton(
                icon: Icon(Icons.search,color: Colors.black38,),
                onPressed: () {
                },
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
          ),
        ),
           Image.asset("assets/home_filter.png",height: 50,),],

           

              ),
               
                ListView(
                  
                  shrinkWrap: true,
          padding: const EdgeInsets.all(20),
          physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
          
              MyCards(description: 'Hi Community! I am open to new connection \" \u{1F600} \"', 
                distance: 'Within 800-900 m', loading: 20.0, 
                location: 'Delhi | Student Member', name: 'Sumit Patil', namePhoto: 'SP', 
                status: 'Coffee | Business ',),
                MyCards(description: 'Hi Community! I am open to new connection \" \u{1F600}\"', 
                distance: 'Within 500-600 m', loading: 30.0, 
                location: 'Mumbai | Student Member', name: 'Durga Tewar', namePhoto: 'DT', 
                status: 'Coffee | Business | Friendship ',),
                MyCards(description: 'Hi Community! I am open to new connection \" \u{1F600}\"', 
                distance: 'Within 100-500 m', loading: 40.0, 
                location: 'Pune | Student Member', name: 'Durgesh Shah', namePhoto: 'DS', 
                status: 'Coffee | Business | Friendship ',),
                MyCards(description: 'Hi Community! I am open to new connection \" \u{1F600}\"', 
                distance: 'Within 400-600 m', loading: 30.0, 
                location: 'Thanr | Student Member', name: 'Sudhir Roy', namePhoto: 'SR', 
                status: 'Coffee | Business | Friendship ',),

          ],
        ),

            ]
      ),
    )));
  }
}