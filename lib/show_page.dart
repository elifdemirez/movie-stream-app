import 'package:film_app/consts/boxSizes.dart';
import 'package:film_app/consts/fontSizes.dart';
import 'package:film_app/consts/iconSizes.dart';
import 'package:film_app/consts/titles.dart';
import 'package:film_app/main_page.dart';
import 'package:film_app/watchlist.dart';
import 'package:flutter/material.dart';
import 'package:film_app/consts/colors.dart';
import 'package:film_app/widgets/watchWidget.dart';
import 'package:film_app/widgets/movieWidget.dart';
import 'package:film_app/widgets/genreWidget.dart';
import 'package:film_app/widgets/buildWidget.dart';

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

class ShowPage extends StatefulWidget{
  const ShowPage({super.key});

  @override
  State<ShowPage> createState() => _ShowPageState();
}

class _ShowPageState extends State<ShowPage> {
  List<CardItem> items=[
    const CardItem(
        cardImage:"assets/images/breakingbad.jpg"
    ),
    const CardItem(
        cardImage:"assets/images/lcdp.jpg"
    ),
    const CardItem(
        cardImage:"assets/images/twd.jpg"
    ),
  ];
  List<WatchItem> itemss=[
    const WatchItem(
      watchImage: "assets/images/breakingbad.jpg",
      watchName:"Breaking Bad",
      watchSub:"Action Movie",
    ),
    const WatchItem(
      watchImage: "assets/images/aot.jpg",
      watchName:"Attack on Titan",
      watchSub: "Anime Movie",
    ),
    const WatchItem(
      watchImage: "assets/images/lucifer.jpg",
      watchName: "Lucifer",
      watchSub: "Thriller Movie",
    ),
  ];
  List<GenreItem> itemsss=[
    const GenreItem(genre: "ACTION"),
    const GenreItem(genre: "ANIMATION"),
    const GenreItem(genre: "ANIME"),
    const GenreItem(genre: "THRILLER"),
  ];
  List<MovieItem> movieitem=[
    const MovieItem(movieImage: "assets/images/gilmoregirls.jpg"),
    const MovieItem(movieImage: "assets/images/euphoria.webp"),
    const MovieItem(movieImage: "assets/images/mandalorian.jpg"),
    const MovieItem(movieImage: "assets/images/westworld.webp"),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.transparentColor,
        leading: const Icon(
          Icons.play_circle_outline_rounded,
          color: ProjectColors.whiteColor,
          size: ProjectIconSizes.normalIconSize,
        ),
        centerTitle: true,
        actions: [
          TextButton(
            child: const Text(ProjectTitles.title1,style: TextStyle(fontSize: ProjectFontSizes.normalfontSize,
                color: ProjectColors.lightgreyColor)),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPage()));
            },
          ),
          const SizedBox(width: BoxSizes.box1,),
          TextButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShowPage()));
          },
              child: const Text(ProjectTitles.title2,style: TextStyle(fontSize: ProjectFontSizes.normalfontSize,
                  color: ProjectColors.redColor),)),
          const SizedBox(width: BoxSizes.box2,),
          const Icon(Icons.search
            ,
            color: ProjectColors.whiteColor,
            size: ProjectIconSizes.normalIconSize
            ,)
        ],
      ),
      body: Column(
        children: [
          const SizedBox(height: BoxSizes.box1,),
          Container(
              height: BoxSizes.box3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, _) =>const SizedBox(width: BoxSizes.box4,),
                itemBuilder: (context,index) =>BuildWidget(item:items[index]),
              )
          ),
          const SizedBox(height: BoxSizes.box5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(ProjectTitles.title6,style: TextStyle(color: ProjectColors.whiteColor,fontSize: ProjectFontSizes.font1),),
              const Icon(Icons.arrow_forward_ios_rounded,color: ProjectColors.whiteColor,),
            ],
          ),
          const SizedBox(height: BoxSizes.box1,),
          Container(
              height: BoxSizes.box6,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, _) =>const SizedBox(width: BoxSizes.box4,),
                itemBuilder: (context,index) =>WatchWidget(item:itemss[index]),
              )
          ),
          const SizedBox(height: BoxSizes.box7,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(ProjectTitles.title7,style: TextStyle(color: ProjectColors.whiteColor,fontSize: ProjectFontSizes.font1),),
            ],
          ),
          const SizedBox(height: BoxSizes.box1,),
          Container(
              height: BoxSizes.box8,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (context, _) =>const SizedBox(width: BoxSizes.box4,),
                itemBuilder: (context,index) =>GenreWidget(item:itemsss[index]),
              )
          ),
          const SizedBox(height: BoxSizes.box1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text(ProjectTitles.title8,style: TextStyle(color: ProjectColors.whiteColor,fontSize: ProjectFontSizes.font1),),
            ],
          ),
          Container(
              height: BoxSizes.box9,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (context, _) =>const SizedBox(width: BoxSizes.box4,),
                itemBuilder: (context,index) =>MovieWidget(item:movieitem[index]),
              )
          ),
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
        child: BottomAppBar(
          color: ProjectColors.transparentColor,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPage()));},icon:const Icon(Icons.home,color: ProjectColors.redColor,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.search,color: ProjectColors.whiteColor,)),
              IconButton(onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WatchList()));}, icon: const Icon(Icons.play_arrow,color: ProjectColors.whiteColor,)),
              IconButton(onPressed: (){}, icon: const Icon(Icons.person,color: ProjectColors.whiteColor,)),
            ],
          ),
        ),
      ),


    );
  }
}


