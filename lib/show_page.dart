import 'package:film_app/consts/boxSizes.dart';
import 'package:film_app/consts/fontSizes.dart';
import 'package:film_app/consts/iconSizes.dart';
import 'package:film_app/consts/titles.dart';
import 'package:film_app/main_page.dart';
import 'package:film_app/watchlist.dart';
import 'package:flutter/material.dart';
import 'package:film_app/main.dart';
import 'package:film_app/consts/colors.dart';

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
    CardItem(
        cardImage:"assets/images/breakingbad.jpg"
    ),
    CardItem(
        cardImage:"assets/images/lcdp.jpg"
    ),
    CardItem(
        cardImage:"assets/images/twd.jpg"
    ),
  ];
  List<WatchItem> itemss=[
    WatchItem(
      watchImage: "assets/images/breakingbad.jpg",
      watchName:"Breaking Bad",
      watchSub:"Action Movie",
    ),
    WatchItem(
      watchImage: "assets/images/aot.jpg",
      watchName:"Attack on Titan",
      watchSub: "Anime Movie",
    ),
    WatchItem(
      watchImage: "assets/images/lucifer.jpg",
      watchName: "Lucifer",
      watchSub: "Thriller Movie",
    ),
  ];
  List<GenreItem> itemsss=[
    GenreItem(genre: "ACTION"),
    GenreItem(genre: "ANIMATION"),
    GenreItem(genre: "ANIME"),
    GenreItem(genre: "THRILLER"),
  ];
  List<MovieItem> movieitem=[
    MovieItem(movieImage: "assets/images/gilmoregirls.jpg"),
    MovieItem(movieImage: "assets/images/euphoria.webp"),
    MovieItem(movieImage: "assets/images/mandalorian.jpg"),
    MovieItem(movieImage: "assets/images/westworld.webp"),
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.transparentColor,
        leading: Icon(
          Icons.play_circle_outline_rounded,
          color: ProjectColors.whiteColor,
          size: ProjectIconSizes.normalIconSize,
        ),
        centerTitle: true,
        actions: [
          TextButton(
            child: Text(ProjectTitles.title1,style: TextStyle(fontSize: ProjectFontSizes.normalfontSize,
                color: ProjectColors.lightgreyColor)),
            onPressed: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MainPage()));
            },
          ),
          SizedBox(width: BoxSizes.box1,),
          TextButton(onPressed: (){
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ShowPage()));
          },
              child: Text(ProjectTitles.title2,style: TextStyle(fontSize: ProjectFontSizes.normalfontSize,
                  color: ProjectColors.redColor),)),
          SizedBox(width: BoxSizes.box2,),
          Icon(Icons.search
            ,
            color: ProjectColors.whiteColor,
            size: ProjectIconSizes.normalIconSize
            ,)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: BoxSizes.box1,),
          Container(
              height: BoxSizes.box3,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, _) =>SizedBox(width: BoxSizes.box4,),
                itemBuilder: (context,index) =>buildCard(item:items[index]),
              )
          ),
          SizedBox(height: BoxSizes.box5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(ProjectTitles.title6,style: TextStyle(color: ProjectColors.whiteColor,fontSize: ProjectFontSizes.font1),),
              Icon(Icons.arrow_forward_ios_rounded,color: ProjectColors.whiteColor,),
            ],
          ),
          SizedBox(height: BoxSizes.box1,),
          Container(
              height: BoxSizes.box6,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                separatorBuilder: (context, _) =>SizedBox(width: BoxSizes.box4,),
                itemBuilder: (context,index) =>watchCard(item:itemss[index]),
              )
          ),
          SizedBox(height: BoxSizes.box7,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(ProjectTitles.title7,style: TextStyle(color: ProjectColors.whiteColor,fontSize: ProjectFontSizes.font1),),
            ],
          ),
          SizedBox(height: BoxSizes.box1,),
          Container(
              height: BoxSizes.box8,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (context, _) =>SizedBox(width: BoxSizes.box4,),
                itemBuilder: (context,index) =>genreCard(item:itemsss[index]),
              )
          ),
          SizedBox(height: BoxSizes.box1,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(ProjectTitles.title8,style: TextStyle(color: ProjectColors.whiteColor,fontSize: ProjectFontSizes.font1),),
            ],
          ),
          Container(
              height: BoxSizes.box9,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: 4,
                separatorBuilder: (context, _) =>SizedBox(width: BoxSizes.box4,),
                itemBuilder: (context,index) =>MovieCard(item:movieitem[index]),
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
                  MaterialPageRoute(builder: (context) => const MainPage()));},icon:Icon(Icons.home,color: ProjectColors.redColor,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.search,color: ProjectColors.whiteColor,)),
              IconButton(onPressed: (){Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const WatchList()));}, icon: Icon(Icons.play_arrow,color: ProjectColors.whiteColor,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.person,color: ProjectColors.whiteColor,)),
            ],
          ),
        ),
      ),


    );
  }
}

Widget buildCard({
  required CardItem item,
})=>Container(
  width: BoxSizes.box10,
  height: BoxSizes.box11,
  decoration: BoxDecoration(borderRadius:BorderRadius.circular(15.0),boxShadow: [
    BoxShadow(
      blurRadius: 20,
      color: ProjectColors.blackColor,
    ),
  ]),
  child: Container(
    width: BoxSizes.box10,
    height: BoxSizes.box11,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0),
        color: ProjectColors.blackColor),
    child: Column(
      children: [
        Expanded(child: Image.asset(item.cardImage,fit: BoxFit.cover,))
      ],
    ),
  ),
);

Widget watchCard({
  required WatchItem item,
})=>Container(
  width: BoxSizes.box12,
  height: BoxSizes.box13,
  decoration: BoxDecoration(borderRadius:BorderRadius.circular(10.0),boxShadow: [
    BoxShadow(
      blurRadius: 20,
      color: ProjectColors.blackColor,
    ),
  ]),
  child: Container(
    width: BoxSizes.box13,
    decoration: BoxDecoration(borderRadius: BorderRadius.circular(10.0),
        color: ProjectColors.darkgreyColor),
    child: Column(
      children: [
        Expanded(child: Image.asset(item.watchImage,fit: BoxFit.cover,)),
        SizedBox(height: BoxSizes.box14,),
        Text(item.watchName,style: TextStyle(color: ProjectColors.whiteColor),),
        SizedBox(height: BoxSizes.box7,),
      ],
    ),
  ),
);



Widget genreCard({
  required GenreItem item,
})=>Container(
  width: BoxSizes.box15,
  height: BoxSizes.box15,
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
    child: Column(
      children: [
        SizedBox(height: BoxSizes.box7,),
        Text(item.genre,style: TextStyle(color: ProjectColors.whiteColor),),
        SizedBox(height: BoxSizes.box7,),
      ],
    ),
  ),
);


Widget MovieCard({
  required MovieItem item,
})=>Container(
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
      child: Image.asset(item.movieImage,fit: BoxFit.cover,)
  ),
);
