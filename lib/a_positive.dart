import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(A_positive());
}
class A_positive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text('A(+)Blood Group'),
      ),
    );
  }

}