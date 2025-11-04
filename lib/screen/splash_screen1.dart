import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/splash_screen2.dart';

void fadeTo(BuildContext context, Widget nextPage) {
  Navigator.pushReplacement(
    context,
    PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 800),
      pageBuilder: (_, __, ___) => nextPage,
      transitionsBuilder: (_, animation, __, child) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
    ),
  );
}

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({super.key});

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  bool _isLoading = true;
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    // Delay 3 detik sebelum menampilkan konten
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
        _isVisible = true;
      });
    });

    // Auto navigasi 5 detik ke SplashScreen2
    Future.delayed(const Duration(seconds: 5), () {
      if (!mounted) return;
      fadeTo(context, const SplashScreen2());
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _isLoading
            ? const CircularProgressIndicator(color: Colors.blueAccent)
            : AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: const Duration(seconds: 1),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/logo.png', width: 150, height: 150),

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
                onPressed: () => fadeTo(context, const SplashScreen2()),
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
      ),
    );
  }
}