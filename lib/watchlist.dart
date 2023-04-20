import 'package:film_app/consts/boxSizes.dart';
import 'package:film_app/consts/fontSizes.dart';
import 'package:film_app/consts/iconSizes.dart';
import 'package:film_app/consts/titles.dart';
import 'package:film_app/main_page.dart';
import 'package:flutter/material.dart';
import 'package:film_app/main.dart';
import 'package:film_app/consts/colors.dart';
class ListItem {
  final String listImage;
  final String listName;
  const ListItem({
    required this.listImage,
    required this.listName,
});
}
class WatchList extends StatefulWidget{
  const WatchList({super.key});
  @override
  State<WatchList> createState() => _WatchListState();
}
class _WatchListState extends State<WatchList>{

  List<ListItem> itemm=[
   ListItem(listImage: "assets/images/titanic.jpg", listName: "Titanic"),
    ListItem(listImage: "assets/images/yourname.jpg", listName: "Your Name"),
    ListItem(listImage: "assets/images/avatar.jpg", listName: "Avatar"),
    ListItem(listImage: "assets/images/it.jpg", listName: "IT"),
    ListItem(listImage: "assets/images/scream.jpg", listName:"Scream 6" )
  ];
  @override
  Widget build(BuildContext context){
    return Scaffold(
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
              IconButton(onPressed: (){}, icon: Icon(Icons.play_arrow,color: ProjectColors.whiteColor,)),
              IconButton(onPressed: (){}, icon: Icon(Icons.person,color: ProjectColors.whiteColor,)),
            ],
          ),
        ),
      ),

      body: ListView(
        children:[
        SizedBox(height: BoxSizes.box2,),
      Text(ProjectTitles.title5,style: TextStyle(color: ProjectColors.whiteColor,fontSize: ProjectFontSizes.font3),),
      SizedBox(height: BoxSizes.box14,),
      Row(
          children: [
            TextButton(onPressed: (){}, child: Text(ProjectTitles.title3,style: TextStyle(color: ProjectColors.redColor,fontSize: ProjectFontSizes.font2),)),
            SizedBox(height: BoxSizes.box1,),
            TextButton(onPressed: (){}, child: Text(ProjectTitles.title4,style: TextStyle(color: ProjectColors.whiteColor,fontSize: ProjectFontSizes.font2),))
          ]
          ),
           Container(
             height: BoxSizes.box17,
             child: ListView.separated(
                      scrollDirection: Axis.vertical,
                      itemCount: 4,
                      separatorBuilder: (context, _) =>SizedBox(height: BoxSizes.box4,),
                      itemBuilder: (context,index) =>ListContainer(item:itemm[index]),
                    ),
           ),





        ]
      ),
    );
  }
}


Widget ListContainer({
  required ListItem item,
})=>Container(
  width: BoxSizes.box8,
  height: BoxSizes.box6,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: ProjectColors.blackColor,),
  child: Row(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
          Image.asset(item.listImage,fit: BoxFit.cover,),
      SizedBox(width: BoxSizes.box5,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: BoxSizes.box1,),
          Text(item.listName,style: TextStyle(color: ProjectColors.whiteColor,fontSize: ProjectFontSizes.font2),),
          SizedBox(height: BoxSizes.box8,),
          IconButton(onPressed: (){}, icon: Icon(Icons.play_circle,color: ProjectColors.redColor,size: ProjectIconSizes.normalIconSize,))
        ],
      ),

    ],
  ),
);