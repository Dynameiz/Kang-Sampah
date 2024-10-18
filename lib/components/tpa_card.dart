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
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(126, 189, 181, 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/TPA_Logo.png'),
              const SizedBox(width: 5),
              const Text('TPA', style: TextStyle(color: Colors.white, fontSize: 18),)
            ],
          ),
          const Text('Temukan lokasi terdekat Tempat Pemrosesan Akhir', style: TextStyle(color: Colors.white, fontSize: 12, overflow: TextOverflow.clip),),
          const SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 30,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(24),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Lihat Lokasi', style: TextStyle(color:  Color.fromRGBO(126, 189, 181, 1), fontSize: 14),),
                Icon(Icons.arrow_forward, color: Color.fromRGBO(126, 189, 181, 1),)
              ],
            ),
          )
        ],
      ),
    );
  }
}