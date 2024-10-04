import 'package:flutter/material.dart';
import 'Moto.dart';
import 'package:google_fonts/google_fonts.dart';

class MotoDetail extends StatelessWidget {
  final Moto moto;

  const MotoDetail({Key? key, required this.moto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          moto.name ?? '',
          style: GoogleFonts.roboto(
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
        backgroundColor: Color(0xffeaeaea),
      ),
      backgroundColor: Color(0xffeaeaea),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(moto.imageUrl ?? ''),
            const SizedBox(height: 16),
            Text(
              moto.name ?? '',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(
              '\฿${moto.price}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 16),
            Text(
              'รายละเอียด: ${moto.brand ?? ''}',
              style: const TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
