import 'package:flutter/material.dart';


class Recent extends StatelessWidget {
const Recent({ Key? key,
 @required this.label ,
 @required this.imgSrc,
 @required this.company,
 @required this.JobName,
 @required this.location}) : super(key: key);
final label;
final imgSrc;
final company;
final JobName;
final location;


  @override
  Widget build(BuildContext context){
    return  Container(
                 height: 160,
                 width: 150,
                 decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(10),
                 ),
                 child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      //backgroundImage: AssetImage("demo"),
                      backgroundColor: Colors.blueAccent,
                    ),
                    Text(JobName, style: TextStyle(fontSize: 16, color: Colors.black),),
                     Text(company, style: TextStyle(fontSize: 16, color: Colors.black),),
                     Text(location, style: TextStyle(fontSize: 16, color: Colors.black),)  
                  ],
                 ),
    );
  }
}