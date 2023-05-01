import 'package:flutter/material.dart';
import 'package:film_app/main_page.dart';

class CardItem {
  final String cardImage;
  const CardItem({
    required this.cardImage,
  });
}

class WatchItem {
  final String watchImage;
  final String watchName;
  final String watchSub;
  const WatchItem({
    required this.watchImage,
    required this.watchName,
    required this.watchSub,
  });
}
class GenreItem {
  final String genre;
  const GenreItem({
    required this.genre,
  });
}

class MovieItem {
  final String movieImage;
  const MovieItem({
    required this.movieImage,
  });
}
