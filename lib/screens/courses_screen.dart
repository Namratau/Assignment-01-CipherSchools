import 'package:flutter/material.dart';
import 'package:slider_button/slider_button.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

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
        actions: [
        Center(child: SliderButton(
          icon: const Center(
              child: Icon(
                Icons.power_settings_new,
                color: Colors.white,
                size: 20.0,
                semanticLabel: 'Text to announce in accessibility modes',
              ),),
          action: () {
            ///Do something here
            print("Ho");
            // Navigator.of(context).pop();
          },
          label: const Text(
            "Slide to cancel Event",
            style: TextStyle(
                color: Color(0xff4a4a4a), fontWeight: FontWeight.w500, fontSize: 17),
          ),
        ),),
          const Icon(Icons.notifications),
          const Icon(Icons.search),
        ],
      ),
    );
  }
}
