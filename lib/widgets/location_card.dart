import 'dart:ui';

import 'package:flutter/material.dart';

class LocationCard extends StatelessWidget {
  const LocationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      shadowColor: Colors.black38,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  'assets/images/location.png',
                  width: 80,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Tu ubicación",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[900],
                        fontSize: 18),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    "Lima, Perú",
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
