import 'package:flutter/material.dart';
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
            const Text('Daftar Jadi Mitra', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24,),),
            const SizedBox(height: 20,),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  PartnershipCard(),
                  PartnershipCard(),
                  PartnershipCard(),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            const Text('Pertanyaan Umum', style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24,),),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  QuestionCard(),
                  QuestionCard(),
                  QuestionCard(),
                  QuestionCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}