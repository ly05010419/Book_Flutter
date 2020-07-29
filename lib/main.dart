import 'package:bookapp/AmazonPage.dart';
import 'package:bookapp/views/ApplePage.dart';
import 'package:bookapp/views/GooglePage.dart';
import 'package:bookapp/views/InstagramPage.dart';
import 'package:bookapp/views/PlayStationPage.dart';
import 'package:flutter/material.dart';

import 'BookDetail.dart';
import 'package:bookapp/NavigationBar.dart';

void main() => runApp(MyApp());

const MaterialColor white = const MaterialColor(
  0xFFFFFFFF,
  const <int, Color>{
    50: const Color(0xFFFFFFFF),
    100: const Color(0xFFFFFFFF),
    200: const Color(0xFFFFFFFF),
    300: const Color(0xFFFFFFFF),
    400: const Color(0xFFFFFFFF),
    500: const Color(0xFFFFFFFF),
    600: const Color(0xFFFFFFFF),
    700: const Color(0xFFFFFFFF),
    800: const Color(0xFFFFFFFF),
    900: const Color(0xFFFFFFFF),
  },
);

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: white,
      ),
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int currentIndex = 4;

  Widget home = AmazonPage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        title: Text("Buch"),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: home,
      bottomNavigationBar: NavigationBar(
          seletedIndex: currentIndex,
          onTap: (int index) {
            currentIndex = index;
            switch (index) {
              case 0:
                home = new InstagramPage();
                break;
              case 1:
                home = new PlayStationPage();
                break;
              case 2:
                home = new ApplePage();
                break;
              case 3:
                home = new GooglePage();
                break;
              case 4:
                home = new AmazonPage();
                break;
            }

            setState(() {});
          }),
    );
  }
}


