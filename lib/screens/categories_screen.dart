import 'package:divine_gif/screens/subCategory_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../apis/categoriesApi.dart';
import '../models/categories_model.dart';
import '../widgets/heading_title.dart';

class CategoriesScreen extends StatefulWidget {
  static const routeName = '/categories';
  const CategoriesScreen({super.key});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  // final _systemtheme = ThemeMode.system;
  bool loader = true;

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenWidth = mediaQuery.size.width;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Categories",
          ),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: SearchBar(),
            ),
            SizedBox(
              height: screenHeight * 0.01,
            ),
            HeadingTitle(title: "Select Categry"),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
                height: screenHeight * 0.85,
                child: FutureBuilder<CategoriesModel>(
                  future: getCategoriesApi(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return GridView.builder(
                          physics: BouncingScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: screenWidth * 0.03,
                                  mainAxisSpacing: screenHeight * 0.02,
                                  mainAxisExtent: screenHeight * 0.15),
                          itemCount: snapshot.data!.data!.length,
                          itemBuilder: ((context, index) => GridTile(
                                child: InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: ((context) =>
                                                SubCategoryScreen(
                                                  catName: snapshot
                                                      .data!.data![index].name
                                                      .toString(),
                                                  index: index,
                                                ))));
                                  },
                                  child: Center(
                                    child: Container(
                                      height: screenHeight * 0.2,
                                      width: screenWidth * 0.5,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8.0)),
                                        image: DecorationImage(
                                            image: NetworkImage(
                                              snapshot.data!.data![index].gif!
                                                  .images!.original!.url
                                                  .toString(),
                                            ),
                                            fit: BoxFit.cover),
                                      ),
                                      child: Center(
                                        child: Text(
                                          snapshot.data!.data![index].name
                                              .toString(),
                                          style: GoogleFonts.calistoga(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.amber),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              )));
                    } else {
                      return Center(child: CircularProgressIndicator());
                    }
                  },
                ))
          ]),
        ));
  }
}
