import 'package:flutter/material.dart';

class TpaCard extends StatefulWidget {
  const TpaCard({super.key});

  @override
  State<TpaCard> createState() => _TpaCardState();
}

class _TpaCardState extends State<TpaCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      width: MediaQuery.sizeOf(context).width * 0.5 - 20,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(126, 189, 181, 1),
        borderRadius: BorderRadius.circular(8),
      ),
    );
  }
}