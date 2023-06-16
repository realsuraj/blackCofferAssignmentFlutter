import 'package:assignment/color.dart';
import 'package:flutter/material.dart';

class MyCards extends StatefulWidget {
  final String namePhoto,name,location,distance,status,description;
  final double loading;
  const MyCards({super.key, required this.namePhoto, required this.name, required this.location, required this.distance, required this.status, required this.description, required this.loading});

  @override
  State<MyCards> createState() => _MyCardsState();
}

class _MyCardsState extends State<MyCards> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      height: 280,
      width: MediaQuery.of(context).size.width,
     
        child: Stack(
          children: [
            Container(
              margin: const EdgeInsets.all(20),
              child: Card(
                elevation: 10,
                child: 
              Container(
                height: 270,
                width:   MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16)),
              ),),
            ),

            const Positioned(
              right: 40,
              top: 40,
              child: Row(children: [
              Icon(Icons.add),
              Text("INVITE")
            ],)),
            //first 
            Positioned(
              top: 50,
              left: -4,
              child: Card(
                color: const Color(0XFFb8c5cd),
                elevation: 5,
                child: Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(color: const Color(0XFFb8c5cd),
                  borderRadius: BorderRadius.circular(16)),
                  child: Center(child: Text(widget.namePhoto,style: TextStyle(fontSize: 25),),),
                ),
              ),
            ),

            Positioned(
              top: 52,
              left: 88,
              child: SizedBox(
                height: 100,
                width: MediaQuery.of(context).size.width * 0.56,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Text(widget.name,style: TextStyle(fontWeight: FontWeight.bold, color: MyColors().primaryColor),),
                  Text(widget.location,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54),),
                  Text(widget.distance,style: TextStyle(fontWeight: FontWeight.bold, color: MyColors().primaryColor),),
                  Container(
                    decoration: BoxDecoration(color: Colors.grey.shade400,
                    borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.only(right: 100-widget.loading),
                    height: 15,
                    width: 100,
                    child: Container(
                       decoration: BoxDecoration(color: Color(0XFF0e2e43),
                       borderRadius: BorderRadius.circular(15)),
                    ),
                  )

                ],),
              ),
            ),

            Positioned(
              left: 48,
              bottom: 60,
              child: SizedBox(
              width: 200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(widget.status,style: TextStyle(fontWeight: FontWeight.bold, color: MyColors().primaryColor),),
                Text(widget.description,style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black54)),
              ],),
            ))
          ],
        ),
      
    );
  }
}