import 'package:flutter/material.dart';

enum Affordability { Affordable, Pricey, Luxurious }

enum Complexity {
  Simple,
  Challenging,
  Hard,
}

class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final Affordability affordability;
  final Complexity complexity;
  final int duration;
  final List<String> steps;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;

  const Meal(
      {@required this.id,
      @required this.categories,
      @required this.title,
      @required this.imageUrl,
      @required this.ingredients,
      @required this.affordability,
      @required this.complexity,
      @required this.duration,
      @required this.steps,
      @required this.isGlutenFree,
      @required this.isVegan,
      @required this.isLactoseFree,
      @required this.isVegetarian});
}
