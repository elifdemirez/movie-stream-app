import 'package:flutter/material.dart';
import 'package:film_app/consts/boxSizes.dart';
import 'package:film_app/show_page.dart';
import '../consts/colors.dart';


class BuildWidget extends StatelessWidget {
  final CardItem item;

  const BuildWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: BoxSizes.box10,
      height: BoxSizes.box11,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: ProjectColors.blackColor,
            ),
          ]),
      child: Container(
        width: BoxSizes.box10,
        height: BoxSizes.box11,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: ProjectColors.blackColor),
        child: Column(
          children: [
            Expanded(
                child: ClipRect(
                    child: Material(
                        child: Ink.image(
                          image: AssetImage(item.cardImage),
                          fit: BoxFit.cover,
                          child: InkWell(
                            onTap: () {},
                          ),
                        )))),
          ],
        ),
      ),
    );
  }
}

