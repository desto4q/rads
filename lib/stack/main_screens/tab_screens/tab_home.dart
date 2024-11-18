import 'package:flutter/material.dart';
import 'package:rentit/components/rent_tile.dart';

class TabHome extends StatelessWidget {
  const TabHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: List.generate(20, (index) {
          return RentTile();
        }),
      ),
    );
  }
}
