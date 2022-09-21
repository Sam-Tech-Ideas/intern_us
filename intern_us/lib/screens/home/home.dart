
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:intern_us/screens/home/WorkCategories.dart';
import 'package:intern_us/screens/home/recent.dart';



class Home extends StatefulWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(children: [
          //Appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: [
                    Text("Hello",
                    style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 14),),
                     Text("Samuel Agyemang",
                style: TextStyle(fontSize:20,
                fontWeight: FontWeight.bold ),
                ),
             
                  ],
                ),
                //profile avatar
                Container(
                  padding: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.deepPurple[100],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Icon(Icons.person, size: 40,))

                 ],
            ),
          ),
      
          //TextField
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right:20,
              top: 30,
            ),
            child: TextField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(12),
                borderSide: const BorderSide(width:0.0 ),
                ),
                fillColor: Colors.deepPurple[100],
                filled:true,
                hintText: 'Find available jobs',
                hintStyle: TextStyle(color: Colors.black),
                suffixIcon: Icon(Icons.search,  color: Colors.black,),
               focusedBorder: InputBorder.none,
               border: InputBorder.none,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    alignment: Alignment.bottomLeft,
                    child: Text("Featured Jobs", style: TextStyle(
                      color: Colors.black, fontSize: 20,
                    ),),

                  ),
                ),
                 Text("See all", style: TextStyle(
                      color: Color.fromARGB(190, 0, 0, 0), fontSize: 15,
                    ),),
          
                
              ],
                ),
          ) ,
                //search bar
       Container(
                    height: MediaQuery.of(context).size.height/4.5,
                    width: MediaQuery.of(context).size.width/1.06,
                    decoration: BoxDecoration(
                       color: Colors.deepPurple[100],
                     borderRadius: BorderRadius.circular(15),
                    ),
                     child:Column(
                     children: [
            Row(
                         children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                            child: CircleAvatar(
                         //backgroundImage: AssetImage('images/person.jpg'),
                        backgroundColor: Colors.green,
                        ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text.rich(TextSpan(
                              children: [
                                TextSpan(
                                  text: "Product Designer\n",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,

                                  ),
                                ),
                                TextSpan(
                                  text: "Innovrik Company LLB",
                                  style: TextStyle(
                                    color: Colors.black12,fontSize: 14,
                                  )
                                ),
                              ]
                            )),
                          )
                       ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                        children: [
                           WorkCategories(label: "On-site"),
                             WorkCategories(label: "Design"),
                               WorkCategories(label: "Fresher"),
                        ],
                      ),
                      SizedBox(height: 22),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text("Accra, Ghana", style: TextStyle(color: Colors.black ),
                         ),
                          Text("", style: TextStyle(color: Colors.black ),)
                         
                        ],
                      )
                      
                     
                    ],
                 ) ,
              ) ,
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          alignment: Alignment.bottomLeft,
                          child: Text("Recently added", style: TextStyle(
                            color: Colors.black,
                            fontSize: 20,
                            
                          ),
                          ),
                          
                        ),
                      ), 

                      
                //padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                 Container(
                  alignment: Alignment.bottomLeft,
                  child: Text("See all", style: TextStyle(color: Colors.black,
                  fontSize: 16),
                  ),

                ),
             // )
                  ],
                  
                ),
                  ),
                  Row(
                    children: [
                       Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Recent( company:"Google", JobName: "Web Developer", location:"Hybrid"),
                    ),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Recent( company:"Google", JobName: "Cybersecurity", location:"Hybrid"),
                    ),
                   
                   
                    ],
                  ),
                   
                 // Recent(JobName: "Frontend Developer", imgSrc: "", company: "Google Inc", location: "remote")
                // Container(
                //  height: 160,
                //  width: 150,
                //  decoration: BoxDecoration(
                //   color: Colors.deepPurple[100],
                //   borderRadius: BorderRadius.circular(10),
                //  ),
                //  child: Column(
                //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                //   children: [
                //     CircleAvatar(
                //       radius: 30,
                //       backgroundImage: AssetImage("demo"),
                //     ),
                //     Text("demo", style: TextStyle(fontSize: 16, color: Colors.black),),
                //      Text("Company", style: TextStyle(fontSize: 16, color: Colors.black),),
                //      Text("Remote", style: TextStyle(fontSize: 16, color: Colors.black),)  
                //   ],
                //  ),
                // ),
            
             
          //
        ]),
      ),
      
    );
  }
}