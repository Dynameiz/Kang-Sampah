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
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(34, 74, 88, 1),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('assets/TPS_Logo.png'),
              const SizedBox(width: 5),
              const Text('TPS', style: TextStyle(color: Colors.white, fontSize: 18),)
            ],
          ),
          const Text('Temukan lokasi terdekat Tempat Pembuangan Sampah', style: TextStyle(color: Colors.white, fontSize: 12, overflow: TextOverflow.clip),),
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
                Text('Lihat Lokasi', style: TextStyle(color: Color.fromRGBO(34, 74, 88, 1), fontSize: 14),),
                Icon(Icons.arrow_forward, color: Color.fromRGBO(34, 74, 88, 1),)
              ],
            ),
          )
        ],
      ),
    );
  }
}