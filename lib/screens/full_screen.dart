import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_downloader/image_downloader.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'package:share_plus/share_plus.dart';

class FullScreen extends StatelessWidget {
  String imgUrl;
  FullScreen({super.key, required this.imgUrl});

  Future<void> downloadGif(String imgUrl, BuildContext context) async {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text("Downloading Started....")));
    try {
      // Saved with this method.
      print(imgUrl + "///////////////////");
      var gifId = await ImageDownloader.downloadImage(imgUrl);
      print(gifId);
      if (gifId == null) {
        return;
      }

      // Below is a method of obtaining saved image information.
      var fileName = await ImageDownloader.findName(gifId);
      var path = await ImageDownloader.findPath(gifId);
      var size = await ImageDownloader.findByteSize(gifId);
      var mimeType = await ImageDownloader.findMimeType(gifId);
      print(")))))))))))))");
      print(path);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Downloaded Successfully"),
      ));
      print("Gif Downloaded");
    } on PlatformException catch (error) {
      print(error);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text("Error Occurred $error"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQuery = MediaQuery.of(context);
    var screenHeight = mediaQuery.size.height;
    var screenWidth = mediaQuery.size.width;
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: screenHeight * 0.5,
            width: screenWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(imgUrl), fit: BoxFit.fill)),
          ),
          SizedBox(
            height: screenHeight * 0.1,
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            // isExtended: true,
            child: Icon(Icons.download),
            backgroundColor: Colors.black87,
            onPressed: () {
              downloadGif(imgUrl, context);
            },
          ),
          FloatingActionButton(
            // isExtended: true,
            child: Icon(Icons.share),
            backgroundColor: Colors.black87,
            onPressed: () async {
              final url = Uri.parse(imgUrl);
              final response = await http.get(url);
              final bytes = response.bodyBytes;

              final temp = await getTemporaryDirectory();
              final path = '${temp.path}/gif.gif';
              File(path).writeAsBytesSync(bytes);

              await Share.shareFiles([path]);
            },
          ),
          FloatingActionButton(
            // isExtended: true,
            child: Icon(Icons.cancel_sharp),
            backgroundColor: Colors.black87,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
