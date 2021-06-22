import 'package:cached_network_image/cached_network_image.dart';
import 'package:discounttour/data/data.dart';
import 'package:discounttour/model/country_model.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String imgUrl;
  final String placeName;
  final double rating;
  Details(
      {@required this.rating, @required this.imgUrl, @required this.placeName});

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  List<CountryModel> country = new List();

  @override
  void initState() {
    country = getCountrys();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Stack(
                children: [
                  Image.network(
                    widget.imgUrl,
                    height: 350,
                    width: MediaQuery.of(context).size.width,
                    fit: BoxFit.cover,
                  ),
                 
                  Container(
                    height:400,
                    
                  ),
                  Container(
                    
                    height: 350,
                    color: Colors.black12,
                    padding: EdgeInsets.only(top: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  child: Icon(
                                    Icons.arrow_back,
                                    color: Colors.white,
                                    size: 24,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Icon(
                                Icons.share,
                                color: Colors.white,
                                size: 24,
                              ),
                              SizedBox(
                                width: 24,
                              ),
                            Icon(
                                Icons.favorite,
                                color: Colors.white,
                                size: 24,
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        Container(
                          padding: EdgeInsets.only(
                            left: 24,
                            right: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                widget.placeName,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 23),
                              ),
                              SizedBox(
                                height: 12,
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Colors.white70,
                                    size: 25,
                                  ),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "New Delhi, India",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 17),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  RatingBar(widget.rating.round()),
                                  SizedBox(
                                    width: 8,
                                  ),
                                  Text(
                                    "${widget.rating}",
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 17),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 18,
                        ),
                        Container(
                          child: FlatButton(
                            color: Colors.blue[400],
                            
         textColor: Colors.white,  
          shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Text('BOOK NOW', style: TextStyle(fontSize: 20.0,color: Colors.white),),  
                onPressed: () {},  
              ),  
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              color: Colors.blue[400],
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          height: 50,
                        )
                      ],
                    ),
                  )
                ],
              ),
             
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  FeaturesTile(
                    icon: Icon(Icons.wifi, color: Colors.black),
                    label: "Free Wi-Fi",
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.beach_access, color: Colors.black),
                    label: "Sand Beach",
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.card_travel, color: Colors.black),
                    label: "First Coastline",
                  ),
                  FeaturesTile(
                    icon: Icon(Icons.local_drink, color: Colors.black),
                    label: "bar and Resturant",
                  )
                ],
              ),
             Container(
               width: 100,
               height: 55,
             ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "The Taj Palace Hotel, New Delhi is a perfect embodiment of all qualities synonymous with the quality of Taj Hotels, Resorts & Palaces. Standing apart in service, its facilities and of course, in its distinguished patronage, this hotel has played host to Heads of State, corporate moguls and high profile businessmen from across the world. Nestled in six acres of lush greens in the exclusive Diplomatic Enclave of the city, Taj Palace Hotel is the only one in the top-of-the-line category near Gurgaon, and a mere 10 minutes drive from the airport.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 15,
                      height: 1.5,
                    
                      fontWeight: FontWeight.w600,
                      color: Colors.black87),
                ),
              ),
              SizedBox(
                height: 36,
              ),
              Container(
                height: 240,
                child: ListView.builder(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    itemCount: country.length,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return ImageListTile(
                        imgUrl: country[index].imgUrl,
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DetailsCard extends StatelessWidget {
  final String title;
  final String noOfReviews;
  final double rating;
  DetailsCard({this.rating, this.title, this.noOfReviews});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
          color: Color(0xffE9F4F9), borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: Color(0xffD5E6F2),
                    borderRadius: BorderRadius.circular(10)),
                child: Image.asset(
                  "assets/card1.png",
                  height: 30,
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Booking",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5A6C64)),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    "8.0/10",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff5A6C64)),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            " Based on 30 reviews",
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xff879D95)),
          ),
        ],
      ),
    );
  }
}

class FeaturesTile extends StatelessWidget {
  final Icon icon;
  final String label;
  FeaturesTile({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: Container(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xff5A6C64).withOpacity(0.5)),
                  borderRadius: BorderRadius.circular(40)),
              child: icon,
            ),
            SizedBox(
              height: 9,
            ),
            Container(
                width: 70,
                child: Text(
                  label,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: Colors.black),
                ))
          ],
        ),
      ),
    );
  }
}

class RatingBar extends StatelessWidget {
  final int rating;
  RatingBar(this.rating);

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          Icons.star,
          color: rating >= 1 ? Colors.yellow : Colors.white60,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          color: rating >= 2 ? Colors.yellow : Colors.white60,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          color: rating >= 3 ? Colors.yellow : Colors.white60,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          color: rating >= 4 ? Colors.yellow : Colors.white60,
        ),
        SizedBox(
          width: 3,
        ),
        Icon(
          Icons.star,
          color: rating >= 5 ? Colors.yellow : Colors.white60,
        ),
      ],
    ));
  }
}

class ImageListTile extends StatelessWidget {
  final String imgUrl;
  ImageListTile({@required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          imageUrl: imgUrl,
          height: 220,
          width: 150,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
