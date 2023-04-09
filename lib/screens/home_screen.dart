import '/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_face_pile/flutter_face_pile.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Please ignore the cipher-schools icon I have no icon readily available.
        // I will be take care of it after.
        leading: const Icon(Icons.abc),
        // centerTitle: true,
        title: const Text(
          "CipherSchools",
          style: TextStyle(),
        ),
        actions: const [
          Icon(Icons.menu),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Welcome to",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  Text(
                    " the",
                    style: TextStyle(color: Colors.orange, fontSize: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    "Future",
                    style: TextStyle(color: Colors.orange, fontSize: 30),
                  ),
                  Text(
                    " of Learning!",
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                ],
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Start Learning by Best creators for",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
              Text(
                "absolutely free",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 20,
                ),
              ),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 100),
                child: FacePile(
                  faces: [
                    FaceHolder(
                      id: '1',
                      name: 'user 1',
                      avatar:
                          const NetworkImage('https://i.pravatar.cc/300?img=1'),
                    ),
                    FaceHolder(
                      id: '2',
                      name: 'user 2',
                      avatar:
                          const NetworkImage('https://i.pravatar.cc/300?img=2'),
                    ),
                    FaceHolder(
                      id: '3',
                      name: 'user 3',
                      avatar:
                          const NetworkImage('https://i.pravatar.cc/300?img=3'),
                    ),
                  ],
                  faceSize: 50,
                  facePercentOverlap: .1,
                  borderColor: Colors.white,
                ),
              ),
              const SizedBox(width: 10,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text("50+", style: TextStyle(fontWeight: FontWeight.bold),),
                  Text("Mentors", style: TextStyle(fontWeight: FontWeight.bold),),
                ],
              ),
              const VerticalDivider(),
              Column(
                children: [
                  const Text(
                    "4.8/5",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  RatingBar.builder(
                    initialRating: 3,
                    itemSize: 20,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 1.0),
                    itemBuilder: (context, _) => const Icon(
                      Icons.star,
                      color: Colors.amber,
                      // size: 2,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 50,
            width: 200,
            child: ElevatedButton.icon(
              onPressed: () {},
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.white),
              ),
              icon: const Text("Start Learning"),
              label: const Icon(
                Icons.arrow_forward,
              ),
            ),
          ),
          const CarouselWidget(viewPortRatio: 0.8),
        ],
      ),
    );
  }
}

