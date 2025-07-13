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
      clipBehavior: Clip.hardEdge,
      height: 48,
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
          0: _buildSegment("Trending", Icons.local_fire_department),
          1: _buildSegment("Recent", Icons.access_time),
          2: _buildSegment("New", Icons.nature),
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
