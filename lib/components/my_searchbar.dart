import 'package:flutter/material.dart';

class MySearchbar extends StatefulWidget {
  const MySearchbar({super.key});

  @override
  State<MySearchbar> createState() => _MySearchbarState();
}

class _MySearchbarState extends State<MySearchbar> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 6,
      shadowColor: Colors.black,
      borderRadius: BorderRadius.circular(8),
      child: TextField(
          autocorrect: false,
          autofocus: false,
          decoration: InputDecoration(
          hintText: 'Dimana Kamu?',
          prefixIcon: const Icon(Icons.search),
          fillColor: Colors.white,
          filled: true,
          hintStyle: const TextStyle(
            color: Colors.grey,
          ),
          focusColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          
        ),
      ),
    );
  }
}