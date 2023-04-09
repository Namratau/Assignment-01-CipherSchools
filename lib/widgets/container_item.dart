import 'package:flutter/material.dart';

class ContainerItem extends StatelessWidget {
  const ContainerItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: Colors.black,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: const EdgeInsets.all(10),
      width: 300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
              "https://d3gmywgj71m21w.cloudfront.net/498f10428c3b24c94e57a4bff1176c93"),
          const SizedBox(height: 10,),
          const Text(
            "This course for web development students, who wants to advanced their skills in javascript",
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.orange,
              fontSize: 15,
            ),
          ),
          const Text(
            "No of Videos: 20",
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const Text(
            "Course Time: 10 Hours",
            style: TextStyle(
              letterSpacing: 2,
              color: Colors.white,
              fontSize: 15,
            ),
          ),
          const SizedBox(height: 10,),
          Row(
            children: [
              const CircleAvatar(
                backgroundImage: NetworkImage("https://i.pravatar.cc/300?img=1"),
              ),
              const SizedBox(width: 10,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Maximillian Schrumullar",
                    style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                  Text(
                    "Instructor",
                    style: TextStyle(
                      letterSpacing: 2,
                      color: Colors.orange,
                      fontSize: 15,
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
