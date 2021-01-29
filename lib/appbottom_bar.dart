import 'package:flutter/material.dart';

class AppBottomBar extends StatefulWidget {
  @override
  _AppBottomBarState createState() => _AppBottomBarState();
}

class _AppBottomBarState extends State<AppBottomBar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        backgroundColor: Colors.deepPurple,
        //showUnselectedLabels: false,
        showSelectedLabels: false,
        currentIndex: index,
        onTap: (ind) {
          setState(() {
            index = ind;
          });
        },
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.deepPurple,
              ),
              label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.create_new_folder,
                color: Colors.deepPurple,
              ),
              label: "Feed"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.comment,
                color: Colors.deepPurple,
              ),
              label: "Comment"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.deepPurple,
              ),
              label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
                color: Colors.deepPurple,
              ),
              label: "Profile"),
        ]);
  }
}
