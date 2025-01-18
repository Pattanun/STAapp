import 'package:flutter/material.dart';
import 'package:myproject/screens/home.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  int myIndex = 0;
  final Map<String, Map<String, String>> courseData = {
    //อารีนา กูโน
    "เคมีเทคโนโลยีและนวัตกรรม": {
      "leader": "อารีนา กูโน",
      "image": "assets/images/areena.png",
    },
    //เปาซียะ บาเหะ
    "ฟิสิกส์อุตสาหกรรม": {
      "leader": "เปาซียะ บาเหะ",
      "image": "assets/images/paoseeya.png",
    },
    //มูฮัมหมัดคอลีดี กาซอ
    "ชีววิทยาเทคโนโลยีและนวัตกรรม": {
      "leader": "มูฮัมหมัดคอลีดี กาซอ",
      "image": "assets/images/coleedee.png",
    },
    //มูฮัมหมัดคอลีดี กาซอ
    "จุลชีววิทยาทางการแพทย์และอุตสาหกรรม": {
      "leader": "มูฮัมหมัดคอลีดี กาซอ",
      "image": "assets/images/coleedee.png",
    },
    //จิรวรรณ แก้วมรกฎ
    "วิทยาการคอมพิวเตอร์และเทคโนโลยีดิจิทัล": {
      "leader": "จิรวรรณ แก้วมรกฎ",
      "image": "assets/images/jirawan.png",
    },
    //ซามีลา หยีสาแม็ง
    "เทคโนโลยีสารสนเทศ": {
      "leader": "ซามีลา หยีสาแม็ง",
      "image": "assets/images/sameela.png",
    },
    //อารีนา กูโน
    "เทคโนโลยีและนวัตกรรมการเกษตร": {
      "leader": "อารีนา กูโน",
      "image": "assets/images/areena.png",
    },
    //นาบิลละห์ สาแม
    "สัตวศาสตร์และปศุสัตว์": {
      "leader": "นาบิลละห์ สาแม",
      "image": "assets/images/nabilla.png",
    },
    //จิรวรรณ แก้วมรกฎ
    "พลังงานทดแทน": {
      "leader": "จิรวรรณ แก้วมรกฎ",
      "image": "assets/images/jirawan.png",
    },
    "วิทยาศาสตร์เครื่องสำอางและความงาม": {
      "leader": "ไม่มีข้อมูล",
      "image": "assets/images/logo.png",
    },
    //เปาซียะ บาเหะ
    "การประกอบอาหารฮาลาล": {
      "leader": "เปาซียะ บาเหะ",
      "image": "assets/images/paoseeya.png",
    },
    //จิรวรรณ แก้วมรกฎ
    "วิทยาศาสตร์และเทคโนโลยีการอาหาร": {
      "leader": "จิรวรรณ แก้วมรกฎ",
      "image": "assets/images/jirawan.png",
    },
    //เปาซียะ บาเหะ
    "คณิตศาสตร์": {
      "leader": "เปาซียะ บาเหะ",
      "image": "assets/images/paoseeya.png",
    },
    //ซามีลา หยีสาแม็ง
    "วิทยาศาสตร์ทั่วไป": {
      "leader": "ซามีลา หยีสาแม็ง",
      "image": "assets/images/sameela.png",
    },
    //อารีนา กูโน
    "คอมพิวเตอร์ศึกษา": {
      "leader": "อารีนา กูโน",
      "image": "assets/images/areena.png",
    },
    //ฟิรดาว เจ๊ะแต
    "ป.โท สาขาวิชาการสอนวิทยาศาสตร์ คณิตศาสตร์ และคอมพิวเตอร์": {
      "leader": "ฟิรดาว เจ๊ะแต",
      "image": "assets/images/firdaw.png",
    },
    //ฟิรดาว เจ๊ะแต
    "ป.เอก สาขาวิชาการสอนวิทยาศาสตร์ คณิตศาสตร์ และคอมพิวเตอร์": {
      "leader": "ฟิรดาว เจ๊ะแต",
      "image": "assets/images/firdaw.png",
    },
    //ฟิรดาว เจ๊ะแต
    "ป.โท สาขาวิชาการจัดการทรัพยากรธรรมชาติและสิ่งแวดล้อม": {
      "leader": "ฟิรดาว เจ๊ะแต",
      "image": "assets/images/firdaw.png",
    },
    //ฟิรดาว เจ๊ะแต
    "ป.เอก สาขาวิชาการจัดการทรัพยากรธรรมชาติและสิ่งแวดล้อม": {
      "leader": "ฟิรดาว เจ๊ะแต",
      "image": "assets/images/firdaw.png",
    },
  };

  String? selectedCourse;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.0),
        child: AppBar(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("ศ.ดร.พัทธนันท์ บุญปาน",
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20,
                    color: Color.fromRGBO(0, 0, 0, 1),
                  )),
              Text("อาจารย์",
                  style: TextStyle(
                    fontFamily: 'Kanit',
                    fontSize: 20,
                    color: Color.fromRGBO(0, 0, 0, 1),
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

      //bottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "หน้าหลัก",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: "เมนู",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: "ตั้งค่า",
            ),
          ]),
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

          //dropdown เลือกหลักสูตร
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                    blurRadius: 10, color: Colors.black26, offset: Offset(0, 6))
              ],
              color: Colors.white, // กำหนดสีพื้นหลังเป็นสีขาว
              borderRadius: BorderRadius.circular(8),
            ),
            child: DropdownButton<String>(
              isExpanded: true,
              value: selectedCourse,
              hint: Text(
                "เลือกหลักสูตร",
                style: TextStyle(fontFamily: 'Kanit'),
              ),
              items: courseData.keys.map((course) {
                return DropdownMenuItem<String>(
                  value: course,
                  child: Text(course),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedCourse = value;
                });
              },
            ),
          ),
          SizedBox(height: 20),

          //เงื่อนไขการกดเลือก dropdown
          if (selectedCourse != null) ...[
            SizedBox(height: 20),
            Center(
              child: Image.asset(
                courseData[selectedCourse]!['image']!,
                height: 250,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 30),
            Container(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "เจ้าหน้าที่: ${courseData[selectedCourse]!['leader']}",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kanit'),
              ),
            ),
          ] else
            Text(
              "ยังไม่ได้เลือกหลักสูตร",
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),

          //ปุ่มขอรับบริการ
          SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {},
                  child: const Text(
                    'ขอรับบริการ',
                    style: TextStyle(
                        color: Color.fromRGBO(12, 103, 160, 1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Kanit'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromRGBO(201, 240, 242, 1),
    );
  }
}
