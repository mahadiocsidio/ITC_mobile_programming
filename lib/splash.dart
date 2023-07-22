import 'dart:async';
import 'package:anu/main.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Fungsi Future.delayed digunakan untuk menunda perpindahan ke halaman berikutnya.
    // Ganti durasi sesuai kebutuhan, misalnya 3 detik.
    Timer(Duration(seconds: 3), () {
      // Navigasi ke halaman berikutnya setelah selesai splash screen.
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => Loginpage(), // Ganti dengan halaman utama Anda.
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Ganti background color dan tata letak sesuai kebutuhan.
      backgroundColor: Color.fromARGB(90, 255, 255, 255),
      body: Center(
        child: Image.asset('assets/mp.png'), // Ganti path sesuai dengan lokasi gambar Anda.
      ),
    );
  }
}
