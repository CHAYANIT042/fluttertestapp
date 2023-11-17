import 'package:flutter/material.dart';
import 'dart:developer' as developer;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //don't show debug banner on rigt side of emulator
      debugShowCheckedModeBanner: false,

      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: const Color(0xff8FE1A1),
      ),
      home: const MyHomePage(title: 'Project'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(143, 255, 161, 1),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.chevron_left),
            color: Colors.black,
          ),
          title: Container(
            margin: EdgeInsets.only(right: 50),
            alignment: Alignment.center,
            child: Image.asset('asset/img/Logo.png', scale: 10),
          ),
          backgroundColor: Color.fromRGBO(55, 191, 167, 1),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: 30),
                Row(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      child: Card(
                        margin: const EdgeInsets.only(
                            left: 80, top: 20, bottom: 20),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50)),
                        color: const Color(0xff387AC4),
                        child: SizedBox(
                          width: 250,
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                "ประวัติการบริจาค",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 150,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 7, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),

                  child: const Text(
                    "มูลนิธิศูนย์พัฒนาเด็กเล็ก                  11/02/2565 \nสถานะ : กำลังตรวจสอบ \nวันนัดส่งมอบ 15/02/2565 ",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  // child: Center(
                  //   child: Column(
                  //     // add Column
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: <Widget>[
                  //       Text('Welcome',
                  //           style: TextStyle(
                  //               // your text
                  //               fontSize: 50.0,
                  //               fontWeight: FontWeight.bold,
                  //               color: Colors.white)),
                  //       RaisedButton(
                  //         onPressed: () {},
                  //         child: Text('Button'),
                  //       ), // your button beneath text
                  //     ],
                  //   ),
                  // ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "ศูนย์พัฒนาผู้สูงอายุ                           01/02/2565 \nสถานะ : อนุมัติ \nวันนัดส่งมอบ 16/02/2565",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "ศูนย์พัฒนาสัตว์ป่า                             31/01/2565 \nสถานะ : ส่งมอบแล้ว \nวันนัดส่งมอบ 10/02/2565",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "มูลนิธิเพื่อนแท้                                    30/01/2565 \nสถานะ : ส่งมอบแล้ว \nวันนัดส่งมอบ 1/02/2565",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // children: [
                  //   RichText(
                  //     text: TextSpan(
                  //       text: "Create new account",
                  //       style: TextStyle(
                  //           color: Colors.grey,
                  //           fontWeight: FontWeight.bold,
                  //           decoration: TextDecoration.underline),
                  //       // recognizer: TapGestureRecognizer()
                  //       //   ..onTap = () => {
                  //       //         Navigator.push(
                  //       //           context,
                  //       //           MaterialPageRoute(
                  //       //               builder: (context) => SignupPage()),
                  //       //         )
                  //       //       }
                  //     ),
                  //   ),
                  // ],
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "มูลนิธินกขุนทอง                                10/01/2565 \nสถานะ : อนุมัติ \nวันนัดส่งมอบ 20/02/2565",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 7, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "มูลนิธิศูนย์พัฒนาเด็กเล็ก                  11/02/2565 \nสถานะ : กำลังตรวจสอบ \nวันนัดส่งมอบ 15/02/2565",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "ศูนย์พัฒนาผู้สูงอายุ                           01/02/2565 \nสถานะ : อนุมัติ \nวันนัดส่งมอบ 16/02/2565",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "ศูนย์พัฒนาสัตว์ป่า                             31/01/2565 \nสถานะ : ส่งมอบแล้ว \nวันนัดส่งมอบ 10/02/2565",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "มูลนิธิเพื่อนแท้                                    30/01/2565 \nสถานะ : ส่งมอบแล้ว \nวันนัดส่งมอบ 1/02/2565",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(10),
                  width: 350,
                  height: 100,
                  padding:
                      EdgeInsets.only(left: 10, bottom: 10, right: 0, top: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.7), //color of shadow
                        spreadRadius: 7, //spread radius
                        blurRadius: 8, // blur radius
                        offset: Offset(0, 2), // changes position of shadow
                      ),
                    ],
                  ),
                  child: const Text(
                    "มูลนิธินกขุนทอง                                10/01/2565 \nสถานะ : อนุมัติ \nวันนัดส่งมอบ 20/02/2565",
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
