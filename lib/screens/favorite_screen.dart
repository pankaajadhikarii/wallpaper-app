import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(height: 10),
            Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Icon(
                    Icons.arrow_back,
                    size: 27,
                    color: const Color(0xff292D32),
                  ),
                ),
                Text(
                  "Favorites",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff191E31),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Center(
                child: Text(
                  "No any favorites, add to favorites to show favorites",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
