import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Hospital());
}

final List<String> phoneNumbers = [
  '01751757891',  // উদাহরণ ফোন নম্বর
  '01812345678',
  '01998765432',
];

class Hospital extends StatelessWidget {
  void callnumber(String phoneNumber) async {
    final Uri dialnumber = Uri(scheme: 'tel', path: phoneNumber);
    if (await canLaunchUrl(dialnumber)) {
      await launchUrl(dialnumber);
    } else {
      throw 'Could not launch $phoneNumber';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text('Hospital'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              // A+
              buildCard(
                context,
                'Dr.Ratan Clinic',
                phoneNumbers[0],
                'asset/image/blood-drop.png',
              ),
              buildCard(
                context,
                'Dr.Ratan Clinic',
                phoneNumbers[1],
                'asset/image/blood-drop.png',
              ),
              // Uncomment and update the following blocks as needed
              // A-
              // B+
              // B-
              // AB+
              // AB-
              // O+
              // O-
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCard(BuildContext context, String name, String phoneNumber, String imagePath) {
    return Card(
      margin: EdgeInsets.all(7.0),
      elevation: 10,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      color: Colors.white70,
      child: SizedBox(
        height: 80,
        width: 400,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                margin: EdgeInsets.only(left: 8.0),
                child: Image.asset(
                  imagePath, // ছবির পথ
                  height: 50,
                  width: 50,
                ),
              ),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                child: Text(name, style: TextStyle(fontSize: 20, color: Colors.black)),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 8.0),
              child: ElevatedButton(
                onPressed: () => callnumber(phoneNumber),
                child: Icon(Icons.phone, color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
