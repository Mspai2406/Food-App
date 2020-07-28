import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/components/cuisine_item_card.dart';
import 'package:food_app/components/home_title.dart';
import 'package:food_app/components/nearby_item_card.dart';
import 'package:food_app/components/popula_item_card.dart';
import 'package:food_app/models/cuisinelist.dart';
import 'package:food_app/models/nearbyItems.dart';
import 'package:food_app/models/popularItems.dart';


class HomePage extends StatelessWidget {
  List<CuisineItem> cuisineItems = [
    CuisineItem(text: "Pizza & Pasta", secondarytext:"28 reviews", image:"images/pizza.jpg"),
    CuisineItem(text: "Noodles", secondarytext:"23 reviews", image:"images/noodles.jpg"),
    CuisineItem(text: "Burger", secondarytext:"29 reviews", image:"images/burger.jpg"),
  ];
  List<PopularItem> popularItems = [
    PopularItem(text: "Thai Me Up Restaurant &\n Brewary", secondarytext:"28 reviews", image:"images/thai.jpg"),
    PopularItem(text: "Teguile Mackinghir\nGreenpoint", secondarytext:"23 reviews", image:"images/green.jpg"),
  ];
   List<NearByItem> nearByItems = [
    NearByItem(text: "Delicious Pizza & Pasta\nTraditional ", secondarytext:"28 reviews", image:"images/pasta.jpg"),
    NearByItem(text: "Traditional North Indian\nParathas", secondarytext:"23 reviews", image:"images/paratha.jpg"),
    NearByItem(text: "Traditional North Indian\nParathas", secondarytext:"23 reviews", image:"images/paratha.jpg"),
  ];
    
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade200,
      body:SingleChildScrollView(
        //physics:BouncingScrollPhysics(),
        child: Column(
          mainAxisSize:MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height:20
            ),
            SafeArea(
              child:Padding(
                padding: const EdgeInsets.only(left: 26, right: 26),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(color: Colors.grey.shade600),
                    prefixIcon: Icon(Icons.search, size:20,color:Colors.grey.shade600),
                    contentPadding: EdgeInsets.all(8),
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius:BorderRadius.circular(6),
                      borderSide:BorderSide(color: Colors.white),
                    )
                  )
                ),
              ) 
            ),
            SizedBox(height:20),
            HomeTitle(text: "Cuisine"),
            SizedBox(height:20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                child: ListView.builder(
                  itemCount:cuisineItems.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap:true,
                  physics:BouncingScrollPhysics(),
                  itemBuilder:(context,index){
                    return CuisineItemsCard(cuisineItems: cuisineItems[index]);
                  }
                ),
              ),
            ),
            SizedBox(height:15),
            HomeTitle(text: "Popular"),
            SizedBox(height:20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height:200,
                child: ListView.builder(
                  itemCount:popularItems.length,
                  scrollDirection: Axis.horizontal,
                  shrinkWrap:true,
                  physics:BouncingScrollPhysics(),
                  itemBuilder:(context,index){
                    return PopularItemsCard(popularItems: popularItems[index]);
                  }
                ),
              ),
            ),
             SizedBox(height:15),
            HomeTitle(text: "NearBy"),
            SizedBox(height:10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                child: ListView.builder(
                  itemCount:nearByItems.length,
                  scrollDirection: Axis.vertical,
                  shrinkWrap:true,
                  physics:NeverScrollableScrollPhysics(),
                  itemBuilder:(context,index){
                    return NearByItemsCard(nearByItems: nearByItems[index]);
                  }
                ),
              ),
            ),
          ],
        ),
      ),
      
    );
  }
}