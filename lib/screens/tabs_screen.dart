import 'package:flutter/material.dart';

import './home_page.dart';
import './categories_screen.dart';
import './settings_screen.dart';

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    final headline = Theme.of(context).textTheme.headline;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
          bottomNavigationBar: BottomAppBar(),
          // backgroundColor: Colors.redAccent,
          appBar: AppBar(
            bottom: TabBar(
              
              indicatorColor: headline.color,
              labelColor: headline.color,
              tabs: <Widget>[
                Tab(
                  icon: Icon(Icons.category),
                  text: 'Category',
                ),
                Tab(
                  icon: Icon(Icons.home),
                  text: 'Home',
                ),
                Tab(
                  icon: Icon(Icons.settings),
                  text: 'Settings',
                ),
              ],
            ),
            centerTitle: true,
            title: Text(
              'Wallpaper',
              style: headline,
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              CategoriesScreen(),
              HomePage(),
              SettingsScreen(),
            ],
          )),
    );
  }
}
