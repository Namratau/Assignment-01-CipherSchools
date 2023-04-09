import 'package:ciperschools/widgets/container_item.dart';

import '/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
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
          // const DropdownMenu(
          //   label: Text("Browse"),
          //   width: 2,
          //   dropdownMenuEntries: [DropdownMenuEntry(value: 0, label: "Hi")],
          // ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const CarouselWidget(viewPortRatio: 1),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text("Recommended Courses", style: TextStyle(
                  fontSize: 17.5,
                  color: Colors.orange,
                ),),
                DropdownMenu(
                  textStyle: TextStyle(
                    color: Colors.orange,
                  ),
                  initialSelection: 0,
                  inputDecorationTheme: InputDecorationTheme(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(8),),
                    )
                  ),
                  menuStyle: MenuStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.orange,),
                  ),
                  dropdownMenuEntries: [
                    DropdownMenuEntry(value: 0, label: "Popular"),
                    DropdownMenuEntry(value: 1, label: "Highlighted"),
                    DropdownMenuEntry(value: 2, label: "Most Chosen"),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 400,
              child: ListView.builder(
                itemCount: 10,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return const ContainerItem();
                },),
            )
          ],
        ),
      ),
    );
  }
}
