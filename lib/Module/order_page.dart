import 'package:flutter/material.dart';
import 'package:food_app/models/orderItems.dart';

class OrderPage extends StatelessWidget {
  List<OrderItem> orderItems =[
    OrderItem(number: "1", text: "Spaghetti Agilo olie", secondarytext: "200ml | 234 kcal", amount: "14.42"),
    OrderItem(number: "2", text: "Pizza and pasta", secondarytext: "270ml | 134 kcal", amount: "13.35"),
    OrderItem(number: "3", text: "Sweet Lemonade", secondarytext: "220ml | 304 kcal", amount: "11.21"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation:0,
        backgroundColor:Colors.white,
        automaticallyImplyLeading:false,
        leading:IconButton(
          onPressed:(){
            Navigator.pop(context);
          },
          icon: Icon(Icons.keyboard_backspace,color:Colors.black),)
      ),
      body: Stack(
        children:<Widget>[
          SingleChildScrollView(
            child:Padding(
              padding: const EdgeInsets.only(left:16.0,right: 16),
              child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children:<Widget>[
                  SizedBox(height: 20,),
                  Text("Order Summary",style:TextStyle(fontWeight:FontWeight.bold,fontSize:30,),),
                  SizedBox(height: 40,),
                  ListView.builder(
                    itemCount: orderItems.length,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder:(context,index)
                    {
                      return Column(
                        children:<Widget>[
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Container(
                                height:24,
                                width:24,
                                decoration:BoxDecoration(
                                  border:Border.all(color:Colors.grey.shade300),
                                  borderRadius:BorderRadius.circular(5),                              
                                  ),
                                  child: Center(
                                    child:Text(orderItems[index].number,style:TextStyle(fontWeight:FontWeight.bold,)),
                                  ),
                              ),
                              SizedBox(width:8),
                              Text("*"),
                              SizedBox(width:8),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment:CrossAxisAlignment.start,
                                  children: <Widget>[
                                   Text(orderItems[index].text,style:TextStyle(fontWeight:FontWeight.w600),),
                                   SizedBox(height:8,),
                                   Text(orderItems[index].secondarytext,style: TextStyle(fontSize:12,color:Colors.grey.shade500),),

                                  ],
                                ),
                                ),
                                Text(orderItems[index].amount,style: TextStyle(fontSize:17,color:Colors.amber,fontWeight: FontWeight.bold),),

                            ],
                            ),
                            SizedBox(height: 14,),
                            Divider(thickness:1.3,color:Colors.grey.shade200,height:1),
                            SizedBox(height:14,),

                        ],
                      );
                    } ),
                    SizedBox(height:16),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Text("Order",style:TextStyle(fontSize: 14,color:Colors.grey.shade500)),
                        Text("\$38.98",style:TextStyle(fontSize: 14,color:Colors.grey.shade500)),
                      ]
                    ),
                    SizedBox(height:12),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Text("Delivery",style:TextStyle(fontSize: 14,color:Colors.grey.shade500)),
                        Text("\$3.00",style:TextStyle(fontSize: 14,color:Colors.grey.shade500)),
                      ]
                    ),
                    SizedBox(height:20),
                     Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Text("Total",style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                        Text("\$42.98",style:TextStyle(fontSize: 22,fontWeight: FontWeight.bold)),
                      ]
                    ),
                    SizedBox(height:20),
                    Text("Address",style:TextStyle(fontSize: 16 ,fontWeight: FontWeight.w600)),
                    SizedBox(height: 12,),
                     Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Text("234 lixa Building,\n Bangalore",style:TextStyle(fontSize: 14,color: Colors.grey.shade500)),
                        Text("Change",style:TextStyle(fontSize:  14,fontWeight: FontWeight.bold,color: Colors.amber)),
                      ]
                    ),
                    SizedBox(height:20),
                    Text("Payment",style:TextStyle(fontSize: 16 ,fontWeight: FontWeight.w600)),
                    
                    SizedBox(height: 12,),
                     Row(
                      mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      children:<Widget>[
                        Image.asset("images/card.png",height:24,width:24),
                        SizedBox(width:8),
                        Text("**** **** **** ",style:TextStyle(fontSize: 14,color: Colors.grey.shade500)),
                         Expanded(child: Text("7420 ",style:TextStyle(fontSize: 14,color: Colors.grey.shade500))),
                        Text("Change",style:TextStyle(fontSize:  14,fontWeight: FontWeight.bold,color: Colors.amber)),
                      ]
                    ),
                ],
              ),
            ),
            ),
            SafeArea(
              child: Align(
                alignment:Alignment.bottomLeft,
                child:Container(
                  height: 80,
                  width: double.infinity,
                  child:Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: FlatButton(onPressed: (){}, 
                    child: Text("SUBMIT ORDER",style: TextStyle(color:Colors.white,fontWeight: FontWeight.bold),
                    ),
                 
                    color: Colors.amber,
                    shape:RoundedRectangleBorder(
                      borderRadius:BorderRadius.circular(4),

                    )
                ),
                  ),),
              ),
            )
        ]
      ),
    );
  }
}