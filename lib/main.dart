import 'package:flutter/material.dart';
import 'package:fooder/home.dart';
import 'fooder_theme.dart';

void main() {
  return runApp(const FooderLich());
}

class FooderLich extends StatelessWidget {
  const FooderLich({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = FooderTheme.dark();
    return MaterialApp(
      title: "Fooderlich",
      theme: theme,
      home: const Home(),
    );
  }
}
