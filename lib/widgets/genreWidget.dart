import 'package:flutter/material.dart';
import 'package:film_app/consts/boxSizes.dart';
import 'package:film_app/show_page.dart';
import '../consts/colors.dart';


class GenreWidget extends StatelessWidget {
  final GenreItem item;

  const GenreWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: BoxSizes.box15,
      height: BoxSizes.box15,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: ProjectColors.blackColor,
            ),
          ]),
      child: Container(
        width: BoxSizes.box15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: ProjectColors.blackColor),
        child: Column(
          children: [
            const SizedBox(
              height: BoxSizes.box7,
            ),
            Text(
              item.genre,
              style: const TextStyle(color: ProjectColors.whiteColor),
            ),
            const SizedBox(
              height: BoxSizes.box7,
            ),
          ],
        ),
      ),
    );
  }
}