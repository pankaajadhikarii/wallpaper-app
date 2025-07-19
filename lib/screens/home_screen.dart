import 'package:flutter/material.dart';
import 'package:wallpaper_app/screens/category_screen.dart';
import 'package:wallpaper_app/widgets/sliding_segment.dart';

List category = [
  {"image": AssetImage("assets/abstract.jpg"), "text": "Abstract"},
  {"image": AssetImage("assets/gaming.jpeg"), "text": "Gaming"},
  {"image": AssetImage("assets/music.jpeg"), "text": "Music"},
  {"image": AssetImage("assets/girl.jpg"), "text": "Girl"},
];

List gridDetails = [
  {"image": AssetImage("assets/grid1.jpg")},
  {"image": AssetImage("assets/grid2.jpg")},
  {"image": AssetImage("assets/grid3.jpg")},
  {"image": AssetImage("assets/grid4.jpg")},
  {"image": AssetImage("assets/grid5.jpg")},
  {"image": AssetImage("assets/grid6.jpg")},
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(toolbarHeight: 1),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      child: TextFormField(
                        controller: TextEditingController(),
                        decoration: InputDecoration(
                          hintText: "Find Wallpaper",
                          suffixIcon: Icon(Icons.search_sharp),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                            borderSide: BorderSide.none,
                          ),
                          filled: true,
                          fillColor: Color(0xffF0F0F0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Icon(
                    Icons.notifications_rounded,
                    size: 35,
                    color: Color(0xff191E31),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Container(
                height: 230,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: AssetImage("assets/heroImage.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image.asset("assets/COAL.png", height: 62, width: 251),
                    Image.asset(
                      "assets/BLACK.png",
                      color: Color(0xffFFFFFF),
                      height: 61,
                      width: 300,
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Category",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => CategoryScreen()),
                      );
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff0071E3),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              SizedBox(
                height: 100,
                child: GridView.builder(
                  itemCount: category.length,
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.88,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                          image: category[index]["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Center(
                        child: Text(
                          category[index]["text"],
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w500,
                            color: Color(0xffFFFFFF),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              SlidingSegment(),
              SizedBox(height: 15),
              SizedBox(
                height: 371,
                child: GridView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: gridDetails.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    childAspectRatio: 0.6,
                  ),
                  itemBuilder: (context, index) {
                    return Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                          image: gridDetails[index]["image"],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
