import 'package:flutter/material.dart';

class MyPoints extends StatefulWidget {
  const MyPoints({super.key});

  @override
  State<MyPoints> createState() => _MyPointsState();
}

class _MyPointsState extends State<MyPoints> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(8),
      child: Container(
        height: 80,
        padding: const EdgeInsets.only(left: 20),
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.monetization_on_outlined, color: Colors.grey,),
                SizedBox(width: 10,),
                Text('XXXXX Point', style: TextStyle(fontSize: 16),),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: null, 
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                  ),
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.currency_exchange, color: Colors.grey,),
                      SizedBox(height: 5,),
                      Text('Tukar', style: TextStyle(fontSize: 12),),
                    ],
                  ),
                ),
                ElevatedButton(
                  onPressed: null,
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.transparent),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.more_horiz, color: Colors.grey,),
                      SizedBox(height: 5,),
                      Text('Lainnya', style: TextStyle(fontSize: 12),),
                    ],
                  )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}