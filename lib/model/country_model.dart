import 'package:flutter/material.dart';

class CountryModel {
  
  String label;
  String countryName;
  int noOfTours;
  double rating;
  String imgUrl;

  CountryModel(
      {this.countryName, this.label, this.noOfTours, this.rating, this.imgUrl});
}
