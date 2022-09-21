import 'package:flutter/material.dart';
import 'appbar.dart';
class Profile extends StatefulWidget {
const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: buildAppBar(context),
      body: ListView(
      
        children: [
          Center(
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(
                backgroundColor: Colors.blue,
                radius:70.0,
              ),
             
            ) ,
           //     
          ),
           Center(child: Text("Samuel Agyemang", style:TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
           ),
           Center(child: Text("powersam360@gmail.com", style:TextStyle(color: Colors.black38) ,),
           ),
            Center(child: Text("+233559911251", style:TextStyle(color: Color.fromARGB(226, 0, 0, 0)) ,),),
         
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start ,
              children:[
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Text("About", style: TextStyle(fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text("I am a talented, ambitious and hardworking individual, with broad skills and experience in digital and printed marketing, social media and leading projects."),
                )



              ]),
          ),


        
  
         
          
        ],
      ),
    );
  }
}

