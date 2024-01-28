import 'package:divine_gif/screens/categories_screen.dart';
import 'package:divine_gif/screens/childrenPackStickers_screen.dart';
import 'package:divine_gif/screens/dashboard.dart';
import 'package:divine_gif/screens/emogi_screen.dart';
import 'package:divine_gif/screens/listingPackStickers_screen.dart';
import 'package:divine_gif/screens/stickerPack_screen.dart';
import 'package:divine_gif/screens/stickers_screen.dart';
import 'package:divine_gif/screens/trending_screen.dart';
import 'package:divine_gif/screens/trending_stickers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Dashboard(),
      routes: {
        TrendingScreen.routeName: (context) => TrendingScreen(),
        CategoriesScreen.routeName: (context) => CategoriesScreen(),
        EmogiScreen.routeName: (context) => EmogiScreen(),
        StickersScreen.routeName: (context) => StickersScreen(),
        TrendingStickers.routeName: (context) => TrendingStickers(),
        ChildrenPackStickersScreen.routeName: (context) =>
            ChildrenPackStickersScreen(),
        ListingPackStickersScreen.routeName: (context) =>
            ListingPackStickersScreen(),
        StickersPackScreen.routeName: (context) => StickersPackScreen(),
      },
    );
  }
}
