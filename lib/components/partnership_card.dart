import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PartnershipCard extends StatefulWidget {
  const PartnershipCard({super.key, required this.image, required this.title});

  final String title;
  final Image image;

  @override
  State<PartnershipCard> createState() => _PartnershipCardState();
}

class _PartnershipCardState extends State<PartnershipCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 5),
      height: 90,
      width: 160,
      decoration: BoxDecoration(
        gradient: const LinearGradient(colors: [ Color.fromRGBO(124, 184, 139, 1),  Color.fromRGBO(62, 96, 73, 1)]),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 8.0, 0),
        child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          widget.image,
          Text(widget.title, style: GoogleFonts.mulish(color: Colors.white, fontWeight: FontWeight.bold),),
        ],
      ),
        )
    );
  }
}