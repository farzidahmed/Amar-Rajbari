import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'a_positive.dart';

void main(){
  runApp(Blood());
}
class Blood extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('Blood'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            //A+
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
              child: InkWell(
                onTap: (
                    ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  A_positive()),
                  );
                },
                child: SizedBox(

                  height: 80,
                  width: 400,
                  child: Row(
                    /*mainAxisAlignment: MainAxisAlignment.center,*/
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                          child: Container(
                            margin: EdgeInsets.only(left: 8.0),
                            child: Image.asset(
                              alignment: Alignment.centerLeft,
                              'asset/image/blood-drop.png', // Path to your image
                              height: 50,
                              width: 50,// Adjust the image to fit the button
                            ),
                          ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 90.0,right: 80.0),
                          child:
                      Text('A(+) Blood',style: TextStyle(fontSize: 20,color: Colors.black))),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child:
                        Icon(Icons.arrow_forward_sharp,size: 40,color: Colors.black,),)
                    ],
                  ),
                ),
              ),
            ),
            //A-
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
              child: InkWell(
                onTap: (
                    ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  A_positive()),
                  );
                },
                child: SizedBox(

                  height: 80,
                  width: 400,
                  child: Row(
                    /*mainAxisAlignment: MainAxisAlignment.center,*/
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            'asset/image/blood-drop.png', // Path to your image
                            height: 50,
                            width: 50,// Adjust the image to fit the button
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 90.0,right: 80.0),
                          child:
                          Text('A(-) Blood',style: TextStyle(fontSize: 20,color:Colors.black))),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child:
                        Icon(Icons.arrow_forward_sharp,size: 40,color: Colors.black,),)
                    ],
                  ),
                ),
              ),
            ),
            //b+
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
              child: InkWell(
                onTap: (
                    ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  A_positive()),
                  );
                },
                child: SizedBox(

                  height: 80,
                  width: 400,
                  child: Row(
                    /*mainAxisAlignment: MainAxisAlignment.center,*/
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            'asset/image/blood-drop.png', // Path to your image
                            height: 50,
                            width: 50,// Adjust the image to fit the button
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 90.0,right: 80.0),
                          child:
                          Text('B(+) Blood',style: TextStyle(fontSize: 20,color:Colors.black))),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child:
                        Icon(Icons.arrow_forward_sharp,size: 40,color: Colors.black,),)
                    ],
                  ),
                ),
              ),
            ),
            //B-
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
              child: InkWell(
                onTap: (
                    ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  A_positive()),
                  );
                },
                child: SizedBox(

                  height: 80,
                  width: 400,
                  child: Row(
                    /*mainAxisAlignment: MainAxisAlignment.center,*/
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            'asset/image/blood-drop.png', // Path to your image
                            height: 50,
                            width: 50,// Adjust the image to fit the button
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 90.0,right: 80.0),
                          child:
                          Text('B(-) Blood',style: TextStyle(fontSize: 20,color:Colors.black))),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child:
                        Icon(Icons.arrow_forward_sharp,size: 40,color: Colors.black,),)
                    ],
                  ),
                ),
              ),
            ),
            //AB+
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
              child: InkWell(
                onTap: (
                    ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  A_positive()),
                  );
                },
                child: SizedBox(

                  height: 80,
                  width: 400,
                  child: Row(
                    /*mainAxisAlignment: MainAxisAlignment.center,*/
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            'asset/image/blood-drop.png', // Path to your image
                            height: 50,
                            width: 50,// Adjust the image to fit the button
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 80.0,right: 80.0),
                          child:
                          Text('AB(+) Blood',style: TextStyle(fontSize: 20,color:Colors.black))),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child:
                        Icon(Icons.arrow_forward_sharp,size: 40,color: Colors.black,),)
                    ],
                  ),
                ),
              ),
            ),
            //AB-
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
              child: InkWell(
                onTap: (
                    ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  A_positive()),
                  );
                },
                child: SizedBox(

                  height: 80,
                  width: 400,
                  child: Row(
                    /*mainAxisAlignment: MainAxisAlignment.center,*/
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            'asset/image/blood-drop.png', // Path to your image
                            height: 50,
                            width: 50,// Adjust the image to fit the button
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 90.0,right: 80.0),
                          child:
                          Text('AB(-) Blood',style: TextStyle(fontSize: 20,color:Colors.black))),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child:
                        Icon(Icons.arrow_forward_sharp,size: 40,color: Colors.black,),)
                    ],
                  ),
                ),
              ),
            ),
            //o+
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
              child: InkWell(
                onTap: (
                    ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  A_positive()),
                  );
                },
                child: SizedBox(

                  height: 80,
                  width: 400,
                  child: Row(
                    /*mainAxisAlignment: MainAxisAlignment.center,*/
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            'asset/image/blood-drop.png', // Path to your image
                            height: 50,
                            width: 50,// Adjust the image to fit the button
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 90.0,right: 80.0),
                          child:
                          Text('O(+) Blood',style: TextStyle(fontSize: 20,color:Colors.black))),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child:
                        Icon(Icons.arrow_forward_sharp,size: 40,color: Colors.black,),)
                    ],
                  ),
                ),
              ),
            ),
            //o-
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
              child: InkWell(
                onTap: (
                    ) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  A_positive()),
                  );
                },
                child: SizedBox(

                  height: 80,
                  width: 400,
                  child: Row(
                    /*mainAxisAlignment: MainAxisAlignment.center,*/
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          margin: EdgeInsets.only(left: 8.0),
                          child: Image.asset(
                            alignment: Alignment.centerLeft,
                            'asset/image/blood-drop.png', // Path to your image
                            height: 50,
                            width: 50,// Adjust the image to fit the button
                          ),
                        ),
                      ),
                      Container(
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 90.0,right: 80.0),
                          child:
                          Text('O(-) Blood',style: TextStyle(fontSize: 20,color:Colors.black))),
                      Container(
                        margin: EdgeInsets.only(right: 8.0),
                        child:
                        Icon(Icons.arrow_forward_sharp,size: 40,color: Colors.black,),)
                    ],
                  ),
                ),
              ),
            ),




          ],
        ),
      ),
    );
  }

}