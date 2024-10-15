import 'package:flutter/material.dart';

class PartnershipCard extends StatefulWidget {
  const PartnershipCard({super.key});

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
    );
  }
}