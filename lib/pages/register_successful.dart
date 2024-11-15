import 'package:flutter/material.dart';

class RegisterSuccessful extends StatefulWidget {
  const RegisterSuccessful({super.key, required this.jenisMitra});

  final String jenisMitra;

  @override
  State<RegisterSuccessful> createState() => _RegisterSuccessfulState();
}

class _RegisterSuccessfulState extends State<RegisterSuccessful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Request ${widget.jenisMitra}'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.15,),
                Image.asset('assets/Register_Successful.png', width: 200.0,),
                SizedBox(height: 20.0,),
                Text('Request Berhasil!', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 10.0,),
                Text('Tim kami akan segera menghubungi kamu dalam waktu 2×24 jam', style: TextStyle(fontSize: 16.0,), textAlign: TextAlign.center,),
              ],
            ),
            Column(
              children: [
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStateProperty.all(Color(0xff769F99)),
                    padding: WidgetStateProperty.all(EdgeInsets.all(8)),
                    minimumSize: WidgetStateProperty.all(Size(double.infinity, 40)),
                    maximumSize: WidgetStateProperty.all(Size(double.infinity, 40)),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text('Selesai', style: TextStyle(fontSize: 16.0, color: Colors.white),),
                ),
                SizedBox(height: 20.0,)
              ],
            ),
          ],
        ),
      ),
    );
  }
}