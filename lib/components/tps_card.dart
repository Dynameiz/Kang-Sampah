import 'package:flutter/material.dart';

class TpsCard extends StatefulWidget {
  const TpsCard({super.key});

  @override
  State<TpsCard> createState() => _TpsCardState();
}

class _TpsCardState extends State<TpsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.sizeOf(context).width * 0.5 - 20,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(34, 74, 88, 1),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}