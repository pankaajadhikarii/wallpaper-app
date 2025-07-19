import 'package:flutter/material.dart';

List categoryDetails = [
  {"image": const AssetImage("assets/v1.jpg"), "text": "Abstract"},
  {"image": const AssetImage("assets/v2.jpg"), "text": "Art"},
  {"image": const AssetImage("assets/v3.jpg"), "text": "Beach"},
  {"image": const AssetImage("assets/v4.jpg"), "text": "Bicycle"},
  {"image": const AssetImage("assets/v5.jpg"), "text": "Bike"},
  {"image": const AssetImage("assets/v6.jpg"), "text": "Car"},
  {"image": const AssetImage("assets/v7.jpg"), "text": "Food"},
  {"image": const AssetImage("assets/v8.png"), "text": "Gaming"},
  {"image": const AssetImage("assets/v9.jpg"), "text": "Girl"},
  {"image": const AssetImage("assets/v10.jpg"), "text": "God"},
  {"image": const AssetImage("assets/v11.jpg"), "text": "Music"},
  {"image": const AssetImage("assets/v12.jpg"), "text": "Nature"},
  {"image": const AssetImage("assets/v13.jpg"), "text": "Plane"},
  {"image": const AssetImage("assets/v14.jpg"), "text": "Plant"},
  {"image": const AssetImage("assets/v15.jpg"), "text": "Rain"},
  {"image": const AssetImage("assets/v16.jpg"), "text": "Space"},
  {"image": const AssetImage("assets/v17.jpg"), "text": "Travel"},
  {"image": const AssetImage("assets/v18.jpg"), "text": "Wildlife"},
];

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            const SizedBox(height: 10),
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
                  "Category",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff191E31),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Expanded(
              child: GridView.builder(
                itemCount: categoryDetails.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadiusGeometry.circular(15),
                    child: Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: categoryDetails[index]["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(categoryDetails[index]["text"], style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 16
                        ),),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
