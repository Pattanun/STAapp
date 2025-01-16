// import 'package:flutter/material.dart';

// class RegisterScreen extends StatefulWidget {
//   const RegisterScreen({super.key});

//   @override
//   // ignore: library_private_types_in_public_api
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: Text(
//           "สร้างบัญชีผู้ใช้",
//           style: TextStyle(
//             color: const Color.fromARGB(255, 0, 0, 0),
//           ),
//         ),
//         backgroundColor: Color.fromRGBO(111, 202, 207, 1),
//       ),

//       body: Center(
//         child: Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: Form(
//             child: Column(
//               children: [
//                 layoutDropdown(),
//                 //ชื่อภาษาไทย
//                 Text("ชื่อ(ภาษาไทย)",
//                     style: TextStyle(
//                       fontSize: 20,
//                     )),
//                 TextFormField(),
//                 SizedBox(
//                   height: 15,
//                 ),

//                 //ชื่อภาษาไทย
//                 Text("นามสกุล(ภาษาไทย)",
//                     style: TextStyle(
//                       fontSize: 20,
//                     )),
//                 TextFormField(),
//                 SizedBox(
//                   height: 15,
//                 ),

//                 //Email
//                 Text("Email",
//                     style: TextStyle(
//                       fontSize: 20,
//                     )),
//                 TextFormField(),
//                 SizedBox(
//                   height: 15,
//                 ),

//                 //password
//                 Text("Password", style: TextStyle(fontSize: 20)),
//                 TextFormField(),
//                 SizedBox(
//                   height: 15,
//                 ),

//                 //ปุ่มลงทะเบียน
//                 SizedBox(
//                     child: ElevatedButton(
//                   child: Text("ลงทะเบียน",
//                       style: TextStyle(
//                         fontSize: 20,
//                         color: Color.fromRGBO(12, 103, 160, 1),
//                       )),
//                   onPressed: () {},
//                 ))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   layoutDropdown(){

//     return Text('test');
//   }

// }
