import 'package:flutter/material.dart';

Widget build(BuildContext context) {
  return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chevron_left),
          color: Colors.black,
        ),
        title: Container(
          margin: const EdgeInsets.only(top: 6.0),
          child: Image.asset(
            'assets/img/Logo.png',
            fit: BoxFit.contain,
            scale: 8,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 20),
            color: Colors.white,
          ),
          Container(
            alignment: Alignment.topCenter,
            child: Card(
              margin: const EdgeInsets.all(20),
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
                      "รายละเอียดโครงการ",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )));
}
