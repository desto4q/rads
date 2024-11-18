import 'package:animated_read_more_text/animated_read_more_text.dart';
import 'package:flutter/material.dart';
import 'package:rentit/components/rent_tile.dart';

class Listing extends StatelessWidget {
  const Listing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: ListView(
          children: [
            const RentTile(),
            const SizedBox(
              height: 12,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ListTile(
                      leading: const CircleAvatar(),
                      title: const Text("random persond"),
                      subtitle: Row(
                        children: List.generate(
                            5, (generator) => const Icon(Icons.star)),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text("Chat with Agent"),
                      icon: const Icon(Icons.chat_bubble),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text("Virtual Tour"),
                      icon: const Icon(Icons.video_call),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    ElevatedButton.icon(
                      onPressed: () {},
                      label: const Text("Book Listing"),
                      icon: const Icon(Icons.bookmark),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Cost Breakdown"),
                          SizedBox(
                            height: 4,
                          ),
                          Table(
                            border: TableBorder.all(),
                            children: List.generate(5, (index) {
                              return TableRow(children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 24, horizontal: 8),
                                  child: Text("Random Cost"),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 24, horizontal: 8),
                                  child: Text("#${index + 1}00,000"),
                                )
                              ]);
                            }),
                          ),
                        ],
                      ),
                    ),
                    AnimatedReadMoreText(
                        "Discover the perfect blend of comfort and convenience in this modern 2-bedroom, 2-bathroom apartment nestled in the heart of the city. Boasting an open-concept layout, the space features a spacious living room bathed in natural light, complemented by sleek hardwood floors and a neutral color paletteThe kitchen is a chef’s delight, equipped with state-of-the-art stainless steel appliances, granite countertops, and ample cabinet space. Both bedrooms offer cozy retreats with plush carpeting and generous closets, /n while the master bedroom includes an en-suite bathroom for added privacy. Step out onto your private balcony to enjoy stunning views of the skyline, or take advantage of the building's premium amenities, including a fitness center, rooftop lounge, and secure parking. Located just minutes away from shopping, dining, and public transportation, this apartment is the ideal urban sanctuary.Make this your new home today!"),
                    SizedBox(
                      height: 12,
                    ),
                    Features(),
                    Features(),
                    Features(),
                    SizedBox(
                      height: 340,
                      child: ListView.builder(
                        itemCount: 4,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return RentTile();
                        },
                      ),
                    )
                  ],
                ))
          ],
        ),
      ),
    );
  }
}

class Features extends StatelessWidget {
  const Features({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Features",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: List.generate(7, (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [Text("Type"), Text("data")],
                ),
              );
            }),
          ),
        )
      ],
    );
  }
}
