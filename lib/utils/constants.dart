import 'package:flutter/material.dart';
import 'package:travel_ui_landing_page/gen/assets.gen.dart';
import 'package:travel_ui_landing_page/models/models.dart';
import 'package:travel_ui_landing_page/utils/utils.dart';

const navigation = [
  'Accueil',
  'Categories',
  'Aprops',
  'Contact',
 
];

final categories = [
  Catergory(
      title: 'Bottines',
      image: 'assets/categories/bottines.png',
      middleText: 'Visite'),
  Catergory(title: 'Bottines', image:'assets/categories/bottes.png'),
  Catergory(title: 'Mules/sabots', image:'assets/categories/mules.png'),
  Catergory(title: 'Ballerines', image: 'assets/categories/ballerines.png'),
  Catergory(title: 'Escarpins', image: 'assets/categories/escarpins.png'),
  Catergory(title: 'Bqsket-femme', image: 'assets/categories/basket.png'),
];

final destinations = [
  PopularDestination(
    title: 'Mountain Hiking Tour',
    description: 'Mountain Hiking Tour',
    price: 89,
    buttonBackgroundColor: AppsColors.defaultTextColor,
    buttonTextColor: Colors.white,
    image: Assets.popularDestinations.destination1.path,
  ),
  PopularDestination(
    title: 'Machu Picchu, Perur',
    description: 'Machu Picchu, Peru',
    price: 99,
    image: Assets.popularDestinations.destination2.path,
  ),
  PopularDestination(
    title: 'The Grand Canyon, Arizona',
    description: 'Mountain Hiking Tour',
    price: 79,
    image: Assets.popularDestinations.destination3.path,
  ),
  PopularDestination(
    title: 'Mountain Hiking Tour',
    description: 'Mountain Hiking Tour',
    price: 89,
    buttonBackgroundColor: AppsColors.defaultTextColor,
    buttonTextColor: Colors.white,
    image: Assets.popularDestinations.destination1.path,
  ),
];
