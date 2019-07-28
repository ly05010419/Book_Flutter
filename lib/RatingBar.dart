import 'package:flutter/material.dart';

class RatingBar extends StatelessWidget {
  final int startCount;
  final double rating;
  final Color color;

  RatingBar(
      {this.startCount = 5, this.rating = 0.0, this.color = Colors.black});

  Widget createRatingBar(int index) {
    IconData name = Icons.star;

    if (index >= rating) {
      name = Icons.star_border;
    } else if (index < rating && index>=(rating-1)) {
      name = Icons.star_half;
    }else{
      name = Icons.star;
    }
    return Icon(name);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(startCount, (index) {
        return createRatingBar(index);
      }),
    );
  }
}
