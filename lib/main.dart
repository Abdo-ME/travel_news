import 'package:flutter/material.dart';
import 'package:travel_news_app/screens/home.dart';
import 'package:travel_news_app/screens/news_details.dart';
import 'app_styles.dart';
// import 'size_config.dart';
// import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: kLighterWhite,
          body: const NewsDetails(),
          bottomNavigationBar: SizedBox(
            height: 82,
            child: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                backgroundColor: kWhite,
                currentIndex: _selectedIndex,
                selectedItemColor: kBlue,
                onTap: _onItemTapped,
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.home,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.book_outlined,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.notifications,
                      ),
                      label: ''),
                  BottomNavigationBarItem(
                      icon: Icon(
                        Icons.person_3_outlined,
                      ),
                      label: ''),
                ]),
          ),
        ));
  }
}
