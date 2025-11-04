import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/splash_screen2.dart';

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
            // Logo
            Image.asset(
              'assets/images/logo.png',
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

            const SizedBox(height: 10),
            // Deskripsi aplikasi
            const Text(
              "Aplikasi pemesanan mobil yang mudah dan cepat.",
              style: TextStyle(
                fontSize: 16,
                color: Colors.black54,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 40),
            // Tombol Continue
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const SplashScreen2(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueAccent,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Continue",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}