import 'package:flutter/material.dart';
import 'package:fooder/fooder_theme.dart';
import 'package:fooder/main.dart';

class Card1 extends StatelessWidget {
  final String category = "Editor\'s Choice";
  final String title = "The Art of Dough";
  final String description = "Learn to make the perfect bread";
  final String chef = "Alec Meyer";

  const Card1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/mag1.png"),
            fit: BoxFit.cover,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        child: Stack(
          children: [
            Text(
              category,
              style: FooderTheme.darkTextTheme.bodyText1,
            ),
            Positioned(
              top: 25,
              child: Text(
                title,
                style: FooderTheme.darkTextTheme.headline2,
              ),
            ),
            Positioned(
              bottom: 30,
              right: 0,
              child: Text(
                description,
                style: FooderTheme.darkTextTheme.bodyText1,
              ),
            ),
            Positioned(
              bottom: 10,
              right: 0,
              child: Text(
                chef,
                style: FooderTheme.darkTextTheme.bodyText1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
