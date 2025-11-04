import 'package:flutter/material.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo aplikasi (gunakan asset image)
            Image.asset(
              'assets/images/logo.png', // pastikan file logo ada di folder assets/images/
              width: 150,
              height: 150,
            ),

            const SizedBox(height: 20),
            // Nama aplikasi
            const Text(
              "My Flutter App",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}