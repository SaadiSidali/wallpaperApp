import 'package:actual_wallpaper_app/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './utils/Themes.dart';
// import 'package:actual_wallpaper_app/screens/home_page.dart';
import './providers/wallpapers.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Wallpapers(),
        )
      ],
      child: MaterialApp(
        theme: kLightTheme,
        title: 'Wallpapers',
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (ctx) => TabsScreen(),
        },
      ),
    );
  }
}
