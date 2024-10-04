import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'shop1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Minipro',
      theme: ThemeData(
        textTheme: GoogleFonts.robotoTextTheme(Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'MotoBike Shop',
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Color(0xff9d60d5),
            shadows: [
              Shadow(
                color: Color(0xfffdff85),
                offset: Offset(2.0, 2.0),
                blurRadius: 5.0,
              ),
            ],
          ),
        ),
        backgroundColor: Color(0xfffef7b9),
      ),
      backgroundColor: Color(0xfffef7b9),
      body: Center(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20.0), // เพิ่ม padding
          child: ElevatedButton(
            onPressed: () {
              // Navigate to the Shop1 page
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Shop1()),
              );
            },
            style: ElevatedButton.styleFrom(
                minimumSize: Size(200, 80),
                textStyle: TextStyle(fontSize: 30),
                foregroundColor: Colors.white,
                backgroundColor: Color(0xff9d60d5)),
            child: Text('ไปที่ร้าน'),
          ),
        ),
      ),
    );
  }
}
