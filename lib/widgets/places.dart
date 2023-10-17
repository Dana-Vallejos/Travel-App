import 'package:flutter/material.dart';

import '../models/places_model.dart';

class Places extends StatelessWidget {
  const Places({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Chip(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 10),
            backgroundColor: Colors.white10,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            label: Text(places[index].name),
            avatar: CircleAvatar(
              backgroundColor: Colors.white,
              backgroundImage: AssetImage(places[index].image),
            ),
          );
        },
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10.0),
        ),
        itemCount: places.length,
      ),
    );
  }
}
