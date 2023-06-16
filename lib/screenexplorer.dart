import 'package:assignment/color.dart';
import 'package:assignment/textcolormagic.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:syncfusion_flutter_sliders/sliders.dart';
class ScreenExplorer extends StatefulWidget {
  const ScreenExplorer({super.key});

  @override
  State<ScreenExplorer> createState() => _ScreenExplorerState();

  
}

class _ScreenExplorerState extends State<ScreenExplorer> {

    String currentSelectedValue = "available";
    double _value = 0.0;
    var txt = TextEditingController();  
    TextEditingController _textEditingController = TextEditingController(text: "Hi Community! I am open for new connections \n \" 🙂 \"");
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  void _selectAllText() {
    _textEditingController.selection = TextSelection(
      baseOffset: 0,
      extentOffset: _textEditingController.text.length,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
resizeToAvoidBottomInset: false, 
      appBar: AppBar(
        backgroundColor: MyColors().primaryColor,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new,color: Colors.white,),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('Refine',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Select your availability',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyColors().primaryColor
              ),
            ),
            SizedBox(height: 8.0),
               Container(
                width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(10)
              ),
              child: DropdownButton<String>(
                value: currentSelectedValue,
                onChanged: (newValue) {
                   setState(() {
                   currentSelectedValue = newValue!;
                   });
                     print(currentSelectedValue);

                },
                items: [
                  DropdownMenuItem(
                    value: 'available',
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('Available | Hey, let us connect',style: TextStyle(color: Colors.black54),
                      overflow: TextOverflow.ellipsis,
                    ),)
                  ),
                  DropdownMenuItem(
                    value: 'away',
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: const Text('Away | Stay Discreet and Watch',style: TextStyle(color: Colors.black54),
                      overflow: TextOverflow.ellipsis,
                    ),)
                  ),
                  DropdownMenuItem(
                    value: 'busy',
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.8,
                      margin: EdgeInsets.symmetric(horizontal: 5),
                      child: Text('Busy | Do not disturb | I will catch up later | SOS | Emergency'
                      ,style: TextStyle(color: Colors.black54),
                      overflow: TextOverflow.ellipsis,
                    ),)
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
             Text(
              'Select your availability',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyColors().primaryColor
              ),
            ),
            SizedBox(height: 10,),

             Container(
              height: 80,
              decoration: BoxDecoration(border: Border.all(color: MyColors().primaryColor),
              borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(horizontal: 10),
               child: TextField(
                   controller: _textEditingController,
                   decoration: InputDecoration(
                     border: InputBorder.none,
                     
                   ),
                   maxLines: 2,
                   onTap: _selectAllText,
                 ),
             ),
            SizedBox(height: 16.0),
            Text('Select hyper distance', style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyColors().primaryColor
              ),),
            SizedBox(height: 70,),
         SfSlider(
      stepSize: 1,
       min: 0.0,
       max: 100.0,
       activeColor: MyColors().primaryColor,
       value: _value,
       showTicks: false,
       showLabels: false,
       enableTooltip: true,
       shouldAlwaysShowTooltip: true,
       
       onChanged: (dynamic value){
         setState(() {
           _value = value;
         });
       },
     ),
     Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '1 km',
              style: TextStyle(fontSize: 16.0),
            ),
            Text(
              '100 km',
              style: TextStyle(fontSize: 16.0),
            ),
          ],
       
    ),
    
            SizedBox(height: 16.0),
            
            Text('Select purpose', style: TextStyle(
                fontWeight: FontWeight.bold,
                color: MyColors().primaryColor
              ),),
            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                  ColorChangingTextBox(text: "coffee",),
                 ColorChangingTextBox(text: "Business",),
                 ColorChangingTextBox(text: "hobbies",),
                    ],
                  ),
                  Row(
                    children: [
                 ColorChangingTextBox(text: "Friendship",),
                 ColorChangingTextBox(text: "Movie",),
                 ColorChangingTextBox(text: "Dinning",),
                    ],
                  ),
                  Row(
                    children: [
                      ColorChangingTextBox(text: "Dating",),
                 ColorChangingTextBox(text: "Matrimony",),
                    ],
                  )
                 
               
                 
                ],
              ),
            ),
            SizedBox(height: 20,),
            Container(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                  backgroundColor: Color(0xFF0e2e43),
                  primary: Colors.white,
                ),
                child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                  
                  child: Text('Save and Explore')),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

