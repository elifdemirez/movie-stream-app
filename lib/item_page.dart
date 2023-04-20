import 'package:film_app/consts/fontSizes.dart';
import 'package:film_app/consts/iconSizes.dart';
import 'package:film_app/show_page.dart';
import 'package:film_app/watchlist.dart';
import 'package:flutter/material.dart';
import 'package:film_app/main.dart';
import 'package:film_app/consts/colors.dart';
import 'package:film_app/main_page.dart';


class ItemPage extends StatefulWidget{
  const ItemPage({super.key});
  @override
  State<ItemPage> createState() => _ItemPageState();
}
class _ItemPageState extends State<ItemPage>{
  @override
  Widget build(BuildContext context)=>Scaffold(
    appBar: AppBar(
      backgroundColor: ProjectColors.transparentColor,
    ),
    body: Container(
      height: 1000,
      color: ProjectColors.blackColor,
      child: Column(
        children: [

        ],
      ),
    ),
  );
}