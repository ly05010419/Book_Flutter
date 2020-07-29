import 'package:bookapp/BookDetail.dart';
import 'package:bookapp/model/Book.dart';
import 'package:flutter/material.dart';

class AmazonPage extends StatefulWidget {
  @override
  _AmazonPageState createState() => _AmazonPageState();
}

class _AmazonPageState extends State<AmazonPage> {
  List<Book> list = createList();

  Widget createItemHero(Book book) {
    return Hero(
      tag: book.name,
      child: Material(
        elevation: 5,
        shadowColor: Colors.greenAccent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BookDetail(book: book),
              ),
            );
          },
          child: Image.asset(
            book.image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    CustomScrollView customScrollView = new CustomScrollView(
      primary: false,
      slivers: <Widget>[
        SliverPadding(
          padding: EdgeInsets.all(10),
          sliver: SliverGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 2 / 3,
            children: list.map((b) {
              return createItemHero(b);
            }).toList(),
          ),
        )
      ],
    );

    return Container(child: customScrollView,color: Colors.greenAccent,);
  }

  static List<Book> createList(){
    return [
      Book(
          name: "Flutter for Beginners",
          writer: "Alessandro Biessek",
          prise: "9.9",
          image: "res/1.png",
          description:
          "This book begins by introducing you to the Flutter framework and basics of Dart. You'll learn to set up the development environment to get started with your Flutter project. The book will guide you through designing the user interface and user input functions for your app. As you progress, you'll explore the navigator widget to manage your app routes and understand how to add transitions between screens. You'll then get to grips with developing your own plugin and discover how to structure good plugin code. The book will help you display a map from the Flutter app, add markers and interactions to it, and use the Google Places API. You'll build on your knowledge by not only adding tests to create a bug-free app, but also preparing it for deployment on Apple's App Store and Google Play. In later chapters, you'll learn to improve the user experience with advanced features such as map integrations, platform-specific code with native programming languages, and personalized animation options for designing intuitive UIs.",
          rating: 3.5,
          pages: 240),
      Book(
          name: "Practical Flutter",
          writer: "Frank Zammetti",
          prise: "9.9",
          image: "res/2.png",
          description:
          "Explore what Flutter has to offer, where it came from, and where it’s going. Mobile development is progressing at a fast rate and with Flutter – an open-source mobile application development SDK created by Google – you can develop applications for Android and iOS, as well as Google Fuchsia.Learn to create three apps (a personal information manager, a chat system, and a game project) that you can install on your mobile devices and use for real. You will begin by getting a solid foundation of Flutter knowledge, and building on it immediately by constructing two more traditional productivity apps.. You will also learn to create a game, enabling you to see a whole other perspective on what Flutter can do. In addition to building these apps, you'll have the benefit of reviewing real-world issues you might encounter, along with ways to deal with them through tips and tricks, all designed to make your Flutter experience that much more productive and, frankly, fun!",
          rating: 3.5,
          pages: 240),
      Book(
          name: "Flutter in Action",
          writer: "Eric Windmill",
          prise: "9.9",
          image: "res/3.png",
          description:
          "In 2017, consumers downloaded 178 billion apps, and analysts predict growth to 258 billion by 2022. Mobile customers are demanding more—and better—apps, and it’s up to developers like you to write them! Flutter, a revolutionary new cross-platform software development kit created by Google, makes it easier than ever to write secure, high-performance native apps for iOS and Android. Flutter apps are blazingly fast because this open source solution compiles your Dart code to platform-specific programs with no JavaScript bridge! Flutter also supports hot reloading to update changes instantly. And thanks to its built-in widgets and rich motion APIs, Flutter’s apps are not just highly responsive, they’re stunning!",
          rating: 3.5,
          pages: 240),
      Book(
          name: "Learn Google Flutter Fast",
          writer: "Marcus Clow",
          prise: "9.9",
          image: "res/4.png",
          description:
          "Learn Google Flutter by example. Over 65 example mini-apps. Chapters Include: Three Chapters on Dart Language. Introduction to Flutter. Installing Flutter. Your first Flutter App. Dependencies & Packages. Introduction to Widgets & Composition. Stateless Widgets. Stateful Widgets. Basic Material Widgets. Multi-Child Widgets. Single-Child Widgets. App Scaffolding Widgets. Other Widgets. Builders. Routing & Navigation. Forms. Http, Apis, REST & JSON. Flutter with Http, Apis, REST & JSON. State. State & Stateful Widgets. State & InheritedWidgets. State & Scoped Model. State & BLoCs with Streams. Local Persistence. Mixins. Debugging & Performance Profiling. Change Detection, Keys & Rendering. Other Performance Considerations. Publishing Your App. Flutter Resources.",
          rating: 3.5,
          pages: 240),
      Book(
          name: "Beginning Flutter",
          writer: "Marco L. Napoli",
          prise: "9.9",
          image: "res/5.png",
          description:
          "Beginning Flutter: A Hands-On Guide to App Development is the essential resource for both experienced and novice developers interested in getting started with Flutter―the powerful new mobile software development kit. With Flutter, you can quickly and easily develop beautiful, powerful apps for both Android and iOS, without the need to learn multiple programming languages or juggle more than one code base. This book walks you through the process step by step.",
          rating: 3.5,
          pages: 240),
      Book(
          name: "Flutter Projects",
          writer: "Simone Alessandria",
          prise: "9.9",
          image: "res/6.png",
          description:
          "This book is packed with 11 projects that will help you build your own mobile applications using Flutter. It begins with an introduction to Dart programming and explains how it can be used with the Flutter SDK to customize mobile apps. Each chapter contains instructions on how to build an independent app from scratch, and each project focuses on important Flutter features.From building Flutter Widgets and applying animations to using databases (SQLite and sembast) and Firebase, you'll build on your knowledge through the chapters. As you progress, you'll learn how to connect to remote services, integrate maps, and even use Flare to create apps and games in Flutter. Gradually, you'll be able to create apps and games that are ready to be published on the Google Play Store and the App Store. In the concluding chapters, you'll learn how to use the BLoC pattern and various best practices related to creating enterprise apps with Flutter.",
          rating: 3.5,
          pages: 240),
      Book(
          name: "Flutter For Dummies",
          writer: "Barry Burd, PhD",
          prise: "9.9",
          image: "res/7.png",
          description:
          "Flutter is an app developer’s dream come true. With Google’s open source toolkit, you can easily build beautiful apps that work across platforms using a single codebase. This flexibility allows you to get your work out to the widest possible audience. Flutter is already being used by thousands of developers worldwide in a market where billions of apps are downloaded every year. Now is the right time to get ahead of the curve with this incredible tool. ",
          rating: 3.5,
          pages: 240),
      Book(
          name: "Programming Flutter",
          writer: "Carmine Zaccagnino",
          prise: "9.9",
          image: "res/8.png",
          description:
          "Work in Flutter, a framework designed from the ground up for dual platform development, with support for native Java/Kotlin or Objective-C/Swift methods from Flutter apps. Write your next app in one language and build it for both Android and iOS. Deliver the native look, feel, and performance you and your users expect from an app written with each platform's own tools and languages. Deliver apps fast, doing half the work you were doing before and exploiting powerful new features to speed up development. Write once, run anywhere.",
          rating: 3.5,
          pages: 240),
      Book(
          name: "Flutter Quick Start",
          writer: "Andrey Aleev",
          prise: "9.9",
          image: "res/9.png",
          description:
          "This book gives essential elements, the base Flutter developer needs to know in order to write cross-platform mobile applications for Android and iOS in the Dart language. All this is presented in clear form, with practical examples, in the format of lessons, after mastering which you can call yourself a Flutter developer.",
          rating: 3.5,
          pages: 240),
    ];
  }
}
