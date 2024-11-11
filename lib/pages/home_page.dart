import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:kang_sampah/components/my_points.dart';
import 'package:kang_sampah/components/my_searchbar.dart';
import 'package:kang_sampah/components/partnership_card.dart';
import 'package:kang_sampah/components/question_card.dart';
import 'package:kang_sampah/components/tpa_card.dart';
import 'package:kang_sampah/components/tps_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.white,
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
            const MySearchbar(),
            const SizedBox(height: 20,),
            Container(
              height: 120,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 143, 143, 143),
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            const SizedBox(height: 20,),
            const MyPoints(),
            const SizedBox(height: 20,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TpsCard(),
                TpaCard(),
              ],
            ),
            const SizedBox(height: 20,),
            Text('Daftar Jadi Mitra', style: GoogleFonts.poppins(fontWeight: FontWeight.w700, fontSize: 24,),),
            const SizedBox(height: 20,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PartnershipCard(image: Image(image: AssetImage('assets/Mitra_Pengangkut.png'), width: 60.0,), title: "Mitra\nPengangkut"),
                  PartnershipCard(image: Image(image: AssetImage('assets/Mitra_Retail.png'), width: 60.0,), title: "Mitra\nRetail"),
                  PartnershipCard(image: Image(image: AssetImage('assets/Mitra_Event.png'), width: 60.0,),  title: "Mitra\nEvent"),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Text('Pertanyaan Umum', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24,),),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  QuestionCard(question: "Cara Memesan Kang Sampah", image: Image(image: AssetImage('assets/Cara_Memesan.png'),)),
                  QuestionCard(question: "Cara Menjadi Mitra", image: Image(image: AssetImage('assets/Cara_Menjadi_Mitra.png'),)),
                  QuestionCard(question: "Cara mencari TPA & TPS", image: Image(image: AssetImage('assets/Mencari_TPS_TPA.png'),)),
                  QuestionCard(question: "Cara Menukar Poin", image: Image(image: AssetImage('assets/Cara_Menukar_Poin.png'),)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}