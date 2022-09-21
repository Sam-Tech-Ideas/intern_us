import 'package:flutter/material.dart';
import 'categories.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.black26,
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
              ),
            ),
            child: Column(
              children: [
                SizedBox(height: 60),
                //Image(image: AssetImage('files/images/google.png'), height: 80),
                SizedBox(height: 30),
                Text(
                  'UX Designer',
                  style: TextStyle(color: Colors.white, fontSize: 23),
                ),
                SizedBox(height: 5),
                Text(
                  'Google',
                  style: TextStyle(color: Colors.white54, fontSize: 18),
                ),
                SizedBox(height: 60),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    WorkCategories(
                      label: 'Fresher',
                    ),
                    WorkCategories(
                      label: 'Design',
                    ),
                    WorkCategories(
                      label: 'Remote',
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Description',
                style: TextStyle(color: Color.fromARGB(137, 30, 13, 13), fontSize: 18),
              ),
              Text(
                'Requirements',
                style: TextStyle(color: Color.fromARGB(255, 9, 3, 3), fontSize: 18),
              ),
              Text(
                'About',
                style: TextStyle(color: Color.fromARGB(137, 41, 11, 11), fontSize: 18),
              ),
            ],
          ),
          SizedBox(height: 25),
          Text(
            '(1)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Color.fromARGB(179, 28, 11, 11), fontSize: 14),
          ),
          SizedBox(height: 15),
          Text(
            '(2)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Color.fromARGB(179, 42, 14, 14), fontSize: 14),
          ),
          SizedBox(height: 15),
          Text(
            '(3)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Color.fromARGB(179, 33, 4, 4), fontSize: 14),
          ),
          SizedBox(height: 15),
          Text(
            '(4)  Master’s Degree in Design and Computer Science,\n       Computer interactions, or a releated field',
            style: TextStyle(color: Color.fromRGBO(39, 9, 9, 0.702), fontSize: 14),
          ),
         
         
        ],
      ),
    );
  }
}