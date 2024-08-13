import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project3/doctors.dart';
import 'package:project3/hospital.dart';
import 'package:project3/pharmesy.dart';
import 'blood.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'contactScreen.dart';


void main(){
  runApp(IntroApp());
}
class IntroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
    theme: ThemeData.light(),
    darkTheme: ThemeData.dark(),
    themeMode: ThemeMode.system,
  );
}


class Home extends StatelessWidget{
  Mysnakbar(messeage,context){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(messeage))
    );
  }
  final List<String> imgList = [

    'asset/image/slider4.jpeg',
    'asset/image/slider3.jpeg',
    'asset/image/slider2.jpeg',
    'asset/image/download.jpeg',
    'asset/image/slider5.jpeg',
    'asset/image/slider6.jpeg'

  ];


  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(
      backgroundColor:Color(0xff399918),
      title: Text('Amar Rajbari',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),

      actions: [
        IconButton(onPressed: (){},
            icon: Icon(Icons.search)),

        IconButton(onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) =>  Blood()),
          );
        },
            icon: Icon(Icons.more_vert))
      ],

    ),
    drawer: Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(12),
              ),
              child:Column(
                children: [
                  Container(
                      child:
              CircleAvatar(
              radius: 40,
               // backgroundColor: Colors.red,
                child: Padding(
                  padding: const EdgeInsets.all(1), // Border radius
                  child: ClipOval(child: Image.asset('asset/image/images.png',
                    alignment: Alignment.centerLeft,)),
                ),
              ),
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("Amar Rajbari",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 0, 0),
                        fontSize: 24,
                        fontWeight: FontWeight.bold,),)
                    ,
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text("রাজবাড়ী আমার তোমার",
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,),)
                    ,
                  )
                ],
              )

          ),
          ListTile(
            leading: Icon(Icons.home),
            title:Text('Home'),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Home()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title:Text('Contact'),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  ContactScreen()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title:Text('Privacy policy'),
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Home()),
              );
            },
          )
        ],
      ),
    ),
    body: SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        children: [
          SizedBox(
            height: 180,
            width: 300,
            child:Container(
              decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white70
              ),
              child: CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                ),
                items: imgList.map((item) => Container(
                  child: Center(
                    child: Image.asset(
                        item,
                        fit: BoxFit.scaleDown, width: double.infinity,height: double.infinity,),
                  ),
                )).toList(),
              ),
            )
          ),
          //1st row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          'asset/image/blood.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Blood',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Hospital()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/hospital.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Hospital',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Doctors()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/doctor.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Doctors',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),


            ],
          ),

          // Second Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Pharmesy()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/medicine.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Pharmesy',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/cow.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Vetenary',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child:SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          'asset/image/ambulance.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Ambulance',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),


            ],
          ),

          //3rd Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,

            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/police.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Police',style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/firetruck.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Fire services',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/travel.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Bus',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),


            ],
          ),

          //4th Row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/news-reporter.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Journalist',style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/lawyer.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Lawyers',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/gas-station.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Fuel Stations',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // 5th row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/bank.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Bank',style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/super-market.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Super Shop',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/traning.png', // Path to your image
                          height: 40,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Traning ',style: TextStyle(fontSize: 20,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //6th row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/earth.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Tour spots',style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/room-key.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Hotel ',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/restaurant.png', // Path to your image
                          height: 40,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Restauranet ',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //7th row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/railway-station.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Train-Station',style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/delivery.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Curiar ',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/car.png', // Path to your image
                          height: 40,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Rent a car ',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ],
          ),

          //8th row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/book-shop.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Library',style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/college.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('College ',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/school.png', // Path to your image
                          height: 40,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Schools',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //9th row
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 120,
                  child:Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/newlyweds.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Kazi office',style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/energy.png', // Path to your image
                          height: 40,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Electricity ',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),

              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(

                  height: 80,
                  width: 120,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child: Image.asset(
                          alignment: Alignment.center,
                          'asset/image/professor.png', // Path to your image
                          height: 40,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      Text('Scholar ',style: TextStyle(fontSize: 20),),
                    ],
                  ),
                ),
              ),
            ],
          ),
          //history
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(padding: EdgeInsets.all(5.0)),
              Card(
                margin: EdgeInsets.only(left: 7.0,top: 10.0,right: 7.0),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(topRight: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                    )),
                color: Colors.white70,
                child: SizedBox(
                  height: 80,
                  width: 388,
                  child:Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      InkWell(
                        onTap: (
                            ) {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  Blood()),
                          );
                        },
                        child:
                        Image.asset(
                          alignment: Alignment.centerLeft,
                          'asset/image/history.png', // Path to your image
                          height: 50,
                          width: 50,// Adjust the image to fit the button
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('History of Rajbari',style: TextStyle(fontSize: 20),),
                    ],
                  ),

                ),
              ),

            ],
          ),

        ],
      ),
    )

  );
}