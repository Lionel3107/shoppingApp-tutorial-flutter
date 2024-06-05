import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(25),
      child: const Row(
        children: [
          Icon(
            Icons.sort,
            size: 30,
            color: Color(0xFF4C53A5),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20,
            ),
            child: Text(
              "Db Shop",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Color(0xFF4C53A5),
              ),
            ),
          ),
          Spacer(),
          badges.Badge(
            badgeContent: Text('2', style: TextStyle(color: Colors.orange)),
            child: IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: null,
              mouseCursor: MouseCursor.defer,
            ),
          ),
        ],
      ),
    );
  }
}
