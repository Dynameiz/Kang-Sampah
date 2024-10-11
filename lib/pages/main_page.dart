import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:kang_sampah/pages/account_page.dart';
import 'package:kang_sampah/pages/activity_page.dart';
import 'package:kang_sampah/pages/home_page.dart';
import 'package:kang_sampah/pages/inbox_page.dart';
import 'package:kang_sampah/pages/pickup_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {

  final List<Widget> _navigationItems = [
    const Icon(Icons.home_outlined),
    const Icon(Icons.receipt_long_outlined),
    const Icon(Icons.delete_outline_outlined),
    const Icon(Icons.chat_outlined),
    const Icon(Icons.person_outline),
  ];

  final List<Widget> _pages = [
    const HomePage(),
    const ActivityPage(),
    const PickupPage(),
    const InboxPage(),
    const AccountPage(),
  ];

  final List<String> _titles = [
    ' ',
    'Aktivitas',
    ' ',
    'Kotak Masuk',
    ' ',
  ];

  // ignore: prefer_typing_uninitialized_variables
  var _currentPage;
  // ignore: prefer_typing_uninitialized_variables
  var _currentTitle;

  @override
  void initState() {
    super.initState();
    _currentPage = _pages.elementAt(0);
    _currentTitle = _titles.elementAt(0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_currentTitle),
        centerTitle: true,
        backgroundColor: const Color.fromRGBO(120, 156, 156, 1),
        
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: _currentPage,
        ),
      ),
      
      bottomNavigationBar: CurvedNavigationBar(
        items: _navigationItems,
        color: const Color.fromARGB(255, 250, 250, 250),
        backgroundColor:Colors.white,
        animationDuration: Durations.medium2,
        animationCurve: Curves.linearToEaseOut,
        index: 0,
        onTap: (index){
          _currentPage = _pages.elementAt(index);
          _currentTitle = _titles.elementAt(index);
          setState(() {
            
          });
        },
      ),
    );
  }
}