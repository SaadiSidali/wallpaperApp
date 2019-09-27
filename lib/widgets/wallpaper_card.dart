import 'package:flutter/material.dart';

class WallpaperCard extends StatelessWidget {
  final String id;
  final String wallpaperUrl;
  final bool isCarousel;

  WallpaperCard({this.id, this.wallpaperUrl, this.isCarousel:false});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(color: Colors.black, blurRadius: 6, offset: Offset(0, 0)),
        ],
        borderRadius: BorderRadius.circular(15),
      ),
      height: isCarousel ? 150 : 280,
      width: isCarousel ? 400 : 150,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: FadeInImage(
          fadeInDuration: Duration(milliseconds: 300),
          placeholder: AssetImage('assets/images/placeholder.png'),
          image: NetworkImage(wallpaperUrl),
          fit: BoxFit.cover,
          width: double.infinity,
        ),
      ),
    );
  }
}
