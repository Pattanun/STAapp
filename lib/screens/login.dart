import 'package:flutter/material.dart';
import 'package:myproject/screens/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("นายพัทธนันท์ บุญปาน",
                  style: TextStyle(
                    fontFamily: 'Kanit', 
                    fontSize: 20,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
              Text("เจ้าหน้าที่",
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  )),
            ],
          ),
          backgroundColor: Color.fromRGBO(111, 202, 207, 1),
          leading: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return HomeScreen();
              }));
            },
            tooltip: 'Back to Login',
            icon: Icon(Icons.account_circle_outlined, size: 53.0),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: FaIcon(
                  FontAwesomeIcons.solidBell,
                  size: 35,
                  color: Colors.black,
                ))
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              'กรุณาเลือกหลักสูตร',
              style: TextStyle(
                fontSize: 30,
                fontFamily: 'Kanit',
                color: const Color.fromARGB(255, 0, 0, 0),
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(201, 240, 242, 1),
    );
  }
}
