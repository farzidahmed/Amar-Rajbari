import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(IntroApp());
}
class IntroApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Home(),
  );
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) =>Scaffold(
    appBar: AppBar(
      backgroundColor:Color(0xff399918),
      title: Text('home'),
      leading: IconButton(onPressed: (){},
          icon: Icon(Icons.menu) ),
      actions: [
        IconButton(onPressed: (){},
            icon: Icon(Icons.search)),

        IconButton(onPressed: (){},
            icon: Icon(Icons.more_vert))
      ],
      flexibleSpace: SafeArea(
        child: Icon(Icons.photo_camera,
          size: 58.0,
          color: Colors.white70,
        ),
          //bottom: const PopupMenuButton(itemBuilder: ),

        top: true,
        bottom: true,
        left: false,
        right: false,
        maintainBottomViewPadding: true,
        minimum: EdgeInsets.all(8.0),

      ),
    ),
    body: Column(
      children: [
        Container(
          height: 100.0,
          decoration: BoxDecoration(
            borderRadius:BorderRadius.only(
              bottomLeft: Radius.circular(100.0),
              bottomRight: Radius.circular(10.0),
            ),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter
          , colors: [
            Colors.white,
            Colors.lightGreen.shade500
          ]
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
              offset: Offset(0.0,10.0),
            )
          ]
          ),
        )
      ],
    ),
  );

}