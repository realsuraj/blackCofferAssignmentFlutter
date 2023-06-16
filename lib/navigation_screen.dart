import 'package:assignment/color.dart';
import 'package:assignment/home.dart';
import 'package:assignment/screenexplorer.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatefulWidget {
  final String name,location;
  const NavigationScreen({super.key, required this.name, required this.location});

  @override
  State<NavigationScreen> createState() =>
      _NavigationScreenState();
}

class _NavigationScreenState
    extends State<NavigationScreen> {

      //bottom nav

      int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
   MyHome(),
    Text(
      'Network',
      style: optionStyle,
    ),
    Text(
      'Chat',
      style: optionStyle,
    ),
    Text(
      'Contact',
      style: optionStyle,
    ),
    Text(
      'Group',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  //end bottom nav
       @override
   Widget build(BuildContext context) => DefaultTabController(
        length: 3,
        child: Scaffold(
           
          appBar: AppBar(
           
            title:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        Text("Howdy ${widget.name} !!",style: TextStyle(color: Colors.white,fontSize: 15),),
         
        Row(children: [
          Icon(Icons.location_on,size: 15,color: Colors.white,),
          SizedBox(width: 5,),
          Text(widget.location,style: TextStyle(color: Colors.white,fontSize: 12),)
        ] )]),
            //centerTitle: true,
            leading: IconButton(
              icon:   Image.asset("assets/top_bar.png",height: 50,),

              onPressed: () {},
            ),
            actions: [
              InkWell(
                onTap: () {
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ScreenExplorer()),
            );
                },
                child: Column(
                        children: [
                        
                         Image.asset("assets/top_filter.png",height: 30,),
                      Text('Refine',style: TextStyle(color: Colors.white),)]),
              ),  
            ],
            //backgroundColor: Colors.purple,
            flexibleSpace: Container(
              decoration: BoxDecoration(
               color: MyColors().primaryColor, 
               
              ),
            ),
            
            bottom: const TabBar(
              //isScrollable: true,
              indicatorColor: Colors.white,
              unselectedLabelColor: Colors.grey,
              labelColor: Colors.white,
              tabs: [
                Tab( text: 'Personal'),
                Tab( text: 'Business'),
                Tab( text: 'Merchant'),

              ],
            ),
            elevation: 20,
            titleSpacing: 20,
          ),
          floatingActionButton: ElevatedButton(
  onPressed: () {},
  child: Icon(Icons.add, color: Colors.white),
  style: ElevatedButton.styleFrom(
    shape: CircleBorder(),
    padding: EdgeInsets.all(20),
    backgroundColor: Color(0XFF0e2e43), // <-- Button color
  ),
),

          bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom_explore.png',height: 30,),
            label: 'Explorer',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom_network.png',height: 30,),
            label: 'Network',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom_chat.png',height: 30,),
            label: 'chat',
          ),
           BottomNavigationBarItem(
            icon: Image.asset('assets/bottom_contact.png',height: 30,),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            icon: Image.asset('assets/bottom_group.png',height: 30,),
            label: 'Group',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0XFF0e2e43),
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black45,
        onTap: _onItemTapped,
      ),
         body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
        ),
          
      );

 
}


