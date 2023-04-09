import 'package:ciperschools/screens/my_profile_screen.dart';
import 'package:ciperschools/screens/training_screen.dart';

import '/screens/courses_screen.dart';
import '/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cipher Schools',
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const App(),
    );
  }
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var currentIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(25),
            topLeft: Radius.circular(25),
          ),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 8),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(25.0),
            topRight: Radius.circular(25.0),
          ),
          child: BottomNavigationBar(
            // backgroundColor: Colors.black,
            fixedColor: Colors.orange,
            unselectedIconTheme: const IconThemeData(
              color: Colors.black,
            ),
            selectedIconTheme: const IconThemeData(
              color: Colors.orange,
            ),
            selectedLabelStyle: const TextStyle(color: Colors.orange),
            onTap: (index) {
              currentIdx = index;
              setState(() {});
            },
            currentIndex: currentIdx,
            items: const [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(icon: Icon(Icons.book), label: "Courses"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.model_training), label: "Training"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "My Profile"),
            ],
          ),
        ),
      ),
      body: IndexedStack(
        index: currentIdx,
        children: const [
          HomePage(),
          CoursesPage(),
          TrainingPage(),
          MyProfile(),
        ],
      ),
    );
  }
}
