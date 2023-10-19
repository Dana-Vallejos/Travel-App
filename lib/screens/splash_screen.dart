import 'package:flutter/material.dart';

import 'home_page.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Image.asset('assets/images/splash.png'),
          const SizedBox(
            height: 40,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const Text(
                  "¡Empieza tu aventura!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "Descubre nuevos horizontes, \ncomienza tu viaje ahora.",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.black54),
                ),
                const SizedBox(
                  height: 60,
                ),
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomePage(),
                          ));
                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 25, vertical: 15)),
                    child: const Text(
                      "Empezar ahora",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
