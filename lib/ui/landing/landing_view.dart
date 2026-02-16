import 'package:edisyon/ui/landing/landing_widgets.dart';
import 'package:flutter/material.dart';

class Landingview extends StatefulWidget {
  const Landingview({super.key});

  @override
  State<Landingview> createState() => _LandingviewState();
}

class _LandingviewState extends State<Landingview> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Current Number :$count"),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  count++;
                });
              },
              label: Text("Ekle"),
            ),
            ElevatedButton.icon(
              onPressed: () {
                setState(() {
                  count--;
                });
              },
              label: Text("Azalt"),
            ),
          ],
        ),
        ProductCard(
          visual: Icon(Icons.local_pizza_rounded),
          title: "Pizza",
          count: 2,
        ),
      ],
    );
  }
}
