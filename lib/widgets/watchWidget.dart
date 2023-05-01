import 'package:flutter/material.dart';
import 'package:film_app/consts/boxSizes.dart';
import 'package:film_app/show_page.dart';
import '../consts/colors.dart';


class WatchWidget extends StatelessWidget {
  final WatchItem item;

  const WatchWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: BoxSizes.box12,
      height: BoxSizes.box13,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: const [
            BoxShadow(
              blurRadius: 20,
              color: ProjectColors.blackColor,
            ),
          ]),
      child: Container(
        width: BoxSizes.box13,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: ProjectColors.darkgreyColor),
        child: Column(
          children: [
            Expanded(
                child: ClipRect(
                    child: Material(
                        child: Ink.image(
                          image: AssetImage(item.watchImage),
                          fit: BoxFit.cover,
                          child: InkWell(onTap: () {}),
                        )))),
            const SizedBox(
              height: BoxSizes.box14,
            ),
            Text(
              item.watchName,
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

