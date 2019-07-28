import 'package:flutter/material.dart';

import 'RatingBar.dart';
import 'model/Book.dart';

class BookDetail extends StatelessWidget {
  final Book book;

  BookDetail({@required this.book});

  text(String data,
          {Color color = Colors.black87,
          num size = 14,
          EdgeInsetsGeometry padding = EdgeInsets.zero,
          bool isBold = false}) =>
      Padding(
        padding: padding,
        child: Text(
          data,
          style: TextStyle(
              color: color,
              fontSize: size.toDouble(),
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal),
        ),
      );

  @override
  Widget build(BuildContext context) {
    Widget topRight = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            book.name,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Text(
            "by ${book.writer}",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w100),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "${book.prise}\$ ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              RatingBar(rating: book.rating,),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10),
          child: MaterialButton(
            child: Text(
              "Buy Now",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            onPressed: () {},
            color: Colors.blue,
            elevation: 16,
            minWidth: 250,
            highlightElevation: 4,
            splashColor: Colors.blue,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        )
      ],
    );

    Widget topLeft = Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        createItemHero(book),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "${book.pages} pages",
            style: TextStyle(fontSize: 16, color: Colors.grey),
          ),
        ),
      ],
    );

    Widget topContent = Container(
      color: Colors.white,
      alignment: Alignment.topCenter,
      child: Container(
          height: 220,
          color: Colors.yellow,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 20),
            child: Row(
              children: <Widget>[
                topLeft,
                Flexible(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: topRight,
                ))
              ],
            ),
          )),
    );

    Widget bottomContent = Container(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Text(
          book.description,
          style: TextStyle(fontSize: 18,height: 1.5),
        ),
      ),
      height: 545,
    );

    return Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
        ),
        body: Column(
          children: <Widget>[topContent, bottomContent],
        ));
  }

  Widget createItemHero(Book book) {
    return Container(
      height: 150,
      width: 100,
      child: Hero(
        tag: book.name,
        child: Material(
          elevation: 16,
          shadowColor: Colors.red.shade900,
          child: Image.asset(
            book.image,
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
