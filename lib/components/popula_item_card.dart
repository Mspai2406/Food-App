import 'package:flutter/material.dart';
import 'package:food_app/models/popularItems.dart';

class PopularItemsCard extends StatefulWidget {
  PopularItem popularItems;
  PopularItemsCard({@required this.popularItems});
  @override
  _PopularItemsCardState createState() => _PopularItemsCardState();
}

class _PopularItemsCardState extends State<PopularItemsCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
     padding: EdgeInsets.only(right:26),
     child: Column(
       crossAxisAlignment:CrossAxisAlignment.start,

       children:<Widget>[
         ClipRRect(
           child:Image.asset(widget.popularItems.image,height:120,width: 200,fit: BoxFit.cover,),
           borderRadius: BorderRadius.circular(5),
          
         ),
          SizedBox(height:10 ,),
          Text(widget.popularItems.text,
          style:TextStyle(fontWeight:FontWeight.w600),),
          SizedBox(height:4),
          Row(
            children: <Widget>[
              Icon(Icons.star,size:12,color:Colors.amber),
               Icon(Icons.star,size:12,color:Colors.amber),
                Icon(Icons.star,size:12,color:Colors.amber),
                 Icon(Icons.star,size:12,color:Colors.amber),
                  Icon(Icons.star,size:12,color:Colors.grey.shade400),
                  SizedBox(width:4),
                  Text("4.3",style:TextStyle(fontWeight:FontWeight.w600,fontSize: 12,),),
                  SizedBox(width:4),
                  Text(widget.popularItems.secondarytext,style:TextStyle(color: Colors.grey.shade400
                  ,fontSize: 12,),)
            ],
          ),

        
        
       ]
     ), 
    );
  }
}