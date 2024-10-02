import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kang_sampah/pages/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]
  );

  runApp(const KangSampah());
}

class KangSampah extends StatelessWidget {
  const KangSampah({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Kang Sampah",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}