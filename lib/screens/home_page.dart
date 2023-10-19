import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app/widgets/icon_button.dart';
import 'package:travel_app/widgets/location_card.dart';
import 'package:travel_app/widgets/places.dart';
import 'package:travel_app/widgets/recommended_places.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Buenos días",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              const SizedBox(height: 2),
              Text(
                "Dana Vallejos",
                style: Theme.of(context).textTheme.labelMedium,
              )
            ],
          ),
        ),
        actions: const [
          CustomIconButton(
            icon: Icon(Ionicons.search_outline),
          ),
          Padding(
            padding: EdgeInsets.only(left: 8.0, right: 20.0),
            child: CustomIconButton(
              icon: Icon(Ionicons.notifications_outline),
            ),
          )
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
        children: [
          LocationCard(),
          const SizedBox(
            height: 15.0,
          ),
          Places(),
          const SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Recomendaciones",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              TextButton(
                onPressed: () {},
                child: const Text("Ver todos"),
              )
            ],
          ),
          const SizedBox(
            height: 10.0,
          ),
          const RecommendedPlaces(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[400],
          type: BottomNavigationBarType.fixed,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Ionicons.home_outline), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.bookmark_outline), label: "Bookmark"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.ticket_outline), label: "Tickets"),
            BottomNavigationBarItem(
                icon: Icon(Ionicons.person_outline), label: "Profile"),
          ]),
    );
  }
}
