import 'package:carousel_slider/carousel_slider.dart';
import 'package:divine_gif/screens/categories_screen.dart';
import 'package:divine_gif/screens/emogi_screen.dart';
import 'package:divine_gif/screens/stickers_screen.dart';
import 'package:divine_gif/screens/trending_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/features_card.dart';
import '../widgets/heading_title.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;

  final List<String> imageList = [
    'images/Trending clips.png',
    'images/Explore.png',
    'images/Download.png',
    'images/Watch.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Divine Craze",
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              HeadingTitle(title: "Featured"),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    child: CarouselSlider.builder(
                      itemCount: imageList.length,
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        height: 170,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        reverse: false,
                        aspectRatio: 5.0,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _currentIndex = index;
                          });
                        },
                      ),
                      itemBuilder: (context, i, id) {
                        //for onTap to redirect to another screen
                        return GestureDetector(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            //ClipRRect for image border radius
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                imageList[i],
                                width: 500,
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                          onTap: () {
                            var url = imageList[i];
                            print(url.toString());
                          },
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: imageList.map((urlOfItem) {
                      int index = imageList.indexOf(urlOfItem);
                      return Container(
                        width: 8.0,
                        height: 8.0,
                        margin: EdgeInsets.symmetric(horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentIndex == index
                              ? Color.fromRGBO(0, 0, 0, 0.8)
                              : Color.fromRGBO(0, 0, 0, 0.3),
                        ),
                      );
                    }).toList(),
                  )
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: KeyFeaturesItem(
                              "Trending", 'images/fire.gif', 0xff9A5CED),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(TrendingScreen.routeName);
                          },
                        ),
                        InkWell(
                          child: KeyFeaturesItem("Categories",
                              'images/categories.gif', 0XFFF75E36),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(CategoriesScreen.routeName);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        InkWell(
                          child: KeyFeaturesItem(
                              "Emogi", 'images/emogi.gif', 0XFF5CA7FA),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(EmogiScreen.routeName);
                          },
                        ),
                        InkWell(
                          child: KeyFeaturesItem(
                              "Stickers", 'images/sticker.gif', 0XFF5D76ED),
                          onTap: () {
                            Navigator.of(context)
                                .pushNamed(StickersScreen.routeName);
                          },
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
