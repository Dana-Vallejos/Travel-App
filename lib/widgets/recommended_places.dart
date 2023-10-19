import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:travel_app/models/recommended_places_model.dart';

class RecommendedPlaces extends StatelessWidget {
  const RecommendedPlaces({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 235,
      child: ListView.separated(
        physics: BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics(),
            decelerationRate: ScrollDecelerationRate.fast),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 220,
            child: Card(
              elevation: 0.4,
              shadowColor: Colors.black38,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(12),
                onTap: () {},
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          recommendedPlaces[index].image,
                          height: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            recommendedPlaces[index].name,
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          const Spacer(),
                          Icon(
                            Icons.star_rounded,
                            size: 16,
                            color: Colors.yellow.shade700,
                          ),
                          Text(
                            recommendedPlaces[index].rating.toString(),
                            style: TextStyle(fontSize: 14),
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_rounded,
                            size: 16,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(recommendedPlaces[index].location)
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) => const Padding(
          padding: EdgeInsets.only(right: 10),
        ),
        itemCount: 5,
      ),
    );
  }
}
