import 'package:discounttour/model/country_model.dart';
import 'package:discounttour/model/popular_tours_model.dart';
import 'package:flutter/material.dart';

List<CountryModel> getCountrys() {
  List<CountryModel> country = new List(
  
  );
  CountryModel countryModel = new CountryModel();

//1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel = new CountryModel();

  
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://images.pexels.com/photos/3568489/pexels-photo-3568489.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel = new CountryModel();

  //1
  countryModel.countryName = "Thailand";
  countryModel.label = "New";
  countryModel.noOfTours = 18;
  countryModel.rating = 4.5;
  countryModel.imgUrl =
      "https://images.pexels.com/photos/1659438/pexels-photo-1659438.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260";
  country.add(countryModel);
  countryModel = new CountryModel();

  return country;
}

List<PopularTourModel> getPopularTours() {
  List<PopularTourModel> popularTourModels = new List();
  PopularTourModel popularTourModel = new PopularTourModel();


  popularTourModel.imgUrl =
      "https://www.tajhotels.com/content/dam/luxury/hotels/taj-palace-delhi/images/gallery-new/10.jpg/jcr:content/renditions/cq5dam.web.756.756.jpeg";
  popularTourModel.title = "Taj Palace";
  popularTourModel.desc = "10 nights for two/all inclusive";
  popularTourModel.price = "\$ 499.99";
  popularTourModel.rating = 4;
  popularTourModels.add(popularTourModel);
  popularTourModel = new PopularTourModel();


  return popularTourModels;
}
