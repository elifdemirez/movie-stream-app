import 'package:flutter/material.dart';
import 'package:film_app/consts/boxSizes.dart';

import '../consts/colors.dart';
class MovieItem {
  final String movieImage;
  const MovieItem({
    required this.movieImage,
  });
}

List<MovieItem> movieitems=[
  MovieItem(movieImage: "assets/images/it.jpg"),
  MovieItem(movieImage: "assets/images/avatar.jpg"),
  MovieItem(movieImage: "assets/images/titanic.jpg"),
  MovieItem(movieImage: "assets/images/patchadams.jpg"),
];
class MovieWidget extends StatelessWidget {
  final MovieItem item;
  const MovieWidget({
    Key? key, required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     Container(

      width: BoxSizes.box15,

      height: BoxSizes.box16,

      decoration: BoxDecoration(borderRadius:BorderRadius.circular(10.0),boxShadow: [

        BoxShadow(

          blurRadius: 20,

          color: ProjectColors.blackColor,

        ),

      ]),

      child: Container(

        width: BoxSizes.box15,

        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),

            color: ProjectColors.blackColor),

        child: Expanded(

            child: ClipRect(

                child: Material(

                    child: Ink.image(image:AssetImage(item.movieImage),fit: BoxFit.cover,

                      child: InkWell(

                        onTap: (){},

                      ),)))),

      ),

    );
  }
}