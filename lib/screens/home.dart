import 'package:flutter/material.dart';
import 'package:myproject/screens/login.dart';
// import 'package:myproject/screens/register.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(111, 202, 207, 1),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/logo2.png",
                    width: 300,
                    height: 150,
                  ),
                  const SizedBox(
                    height: 50,
                  ),

                  // SizedBox(
                  //   height: 30, // Increase the size as per your requirement
                  //   width: 300,
                  //   child: TextField(
                  //     decoration: new InputDecoration.collapsed(hintText: 'Email'),
                  //   ),
                  // ),

                  Container(
                    width: 400, // ความกว้าง
                    height: 40, // ความสูง
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 255, 255, 255), // สีพื้นหลัง
                      borderRadius: BorderRadius.circular(50), // มุมโค้งมน
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none, // ไม่มีเส้นขอบ
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10), // ระยะห่างด้านใน
                        hintText: 'อีเมลล์',
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 15,
                  ),

                  Container(
                    width: 400, // ความกว้าง
                    height: 40, // ความสูง
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 255, 255, 255), // สีพื้นหลัง
                      borderRadius: BorderRadius.circular(50), // มุมโค้งมน
                    ),
                    child: TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        border: InputBorder.none, // ไม่มีเส้นขอบ
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 10), // ระยะห่างด้านใน
                        hintText: 'รหัสผ่าน',
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      icon: Icon(
                        Icons.login,
                        color: Color.fromRGBO(12, 103, 160, 1),
                      ),
                      label: Text("เข้าสู่ระบบ",
                          style: TextStyle(
                            fontFamily: 'Kanit',
                            fontSize: 20,
                            color: Color.fromRGBO(111, 202, 207, 1),
                          )),
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return LoginScreen();
                        }));
                      },
                    ),
                  ),

                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: WidgetStateProperty.all<Color>(
                          const Color.fromARGB(255, 0, 0, 0)),
                    ),
                    onPressed: () {},
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text('หากลืมรหัสผ่าน',
                            style: TextStyle(
                              fontFamily: 'Kanit', 
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                            ))),
                  ),

                  SizedBox(
                    height: 200,
                  ),

                  // SizedBox(
                  //   width: 200, // ความกว้างของกล่อง
                  //   height: 40,
                  //   child: ElevatedButton.icon(
                  //     label: Text("สร้างบัญชีผู้ใช้",
                  //         style: TextStyle(
                  //           fontSize: 20,
                  //           color: Color.fromRGBO(12, 103, 160, 1),
                  //         )),
                  //     onPressed: () {
                  //       Navigator.push(context,
                  //           MaterialPageRoute(builder: (context) {
                  //         return RegisterScreen();
                  //       }));
                  //     },
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ));
  }
}
//Color.fromRGBO(111, 202, 207, 1),
