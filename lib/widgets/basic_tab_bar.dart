import 'package:flutter/material.dart';

class BasicTabBar extends StatefulWidget {
  const BasicTabBar({Key? key}) : super(key: key);

  @override
  State<BasicTabBar> createState() => _BasicTabBarState();
}

class _BasicTabBarState extends State<BasicTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            elevation: 0.0,
            backgroundColor: Colors.blueGrey,
            automaticallyImplyLeading: false,
            title: const TabBar(tabs: [
              Tab(
                text: 'Tab 1',
                icon: Icon(Icons.home),
              ),
              Tab(text: 'Tab 2', icon: Icon(Icons.star)),
              Tab(text: 'Tab 3', icon: Icon(Icons.person)),
            ]),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text(
                'Page 1',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Center(
              child: Text(
                'Page 2',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
            Center(
              child: Text(
                'Page 3',
                style: TextStyle(fontSize: 24.0),
              ),
            ),
          ]),
        ));
  }
}
