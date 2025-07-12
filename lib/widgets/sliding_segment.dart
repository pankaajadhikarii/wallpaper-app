import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SlidingSegment extends StatefulWidget {
  const SlidingSegment({super.key});

  @override
  State<SlidingSegment> createState() => _SlidingSegmentState();
}

class _SlidingSegmentState extends State<SlidingSegment> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(

      // tyo SlidingSegment left rw right ma container ko radius,
      // bhnad baira na jawos bhaneraw clipBehavior halea ko, it clips
      // with the radius of the container
      clipBehavior: Clip.hardEdge,

      height: 60,
      width: 330,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        gradient: LinearGradient(
          colors: [Colors.purple, Colors.blue],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: CupertinoSlidingSegmentedControl<int>(
        backgroundColor: Colors.transparent,
        padding: EdgeInsets.all(2),
        thumbColor: Colors.transparent,
        groupValue: _selectedIndex,
        onValueChanged: (int? newValue) {
          if (newValue != null) {
            setState(() {
              _selectedIndex = newValue;
            });
          }
        },
        children: {

        // Added padding to all the childrens so,
        // it will cover the whole container,
        // and maybe look nice and shit, idk?
          0: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: _buildSegment("Trending", Icons.local_fire_department),
            ),
          1: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: _buildSegment("Recent", Icons.access_time),
            ),
          2: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              child: _buildSegment("New", Icons.nature),
            ),
        },
      ),
    );
  }

  Widget _buildSegment(String lable, IconData icon) {
    return Column(
      children: [
        Icon(
          icon,
          color: _selectedIndex == 0 ? Colors.white : Colors.grey[300],
        ),
        SizedBox(width: 5),
        Text(
          lable,
          style: TextStyle(
            color: _selectedIndex == 0 ? Colors.white : Colors.grey[300],
            fontWeight: _selectedIndex == 0
                ? FontWeight.bold
                : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}
