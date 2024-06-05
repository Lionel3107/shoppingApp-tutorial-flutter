import 'package:app/widgets/CatgoriesWidget.dart';
import 'package:app/widgets/ItemsWidget.dart';
import 'package:flutter/material.dart';

import '../widgets/HomeAppBar.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          HomeAppBar(),
          Container(
              // Temporary height
              // height: 500,
              padding: EdgeInsets.only(top: 15),
              decoration: const BoxDecoration(
                  color: Color(0xFFEDECF2),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(35),
                    topRight: Radius.circular(35),
                  )),
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(

                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          height: 50,
                          width: 300,
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search here...",
                            ),
                          ),
                        ),
                        const Spacer(),
                        const Icon(
                          Icons.camera_alt,
                          color: Color(0xFF4C53A5),
                        )
                      ],
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 10,
                    ),
                    child: const Text(
                      "Categories",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF4C53A5),
                        )
                      ), 
                  ),
                  CategoriesWidget(),

                  // Items
                  Container(                 
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                    child: Text(
                      "Best sellings",
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF4C53A5),
                      ),
                    ),
                  ),
                  ItemsWidget()
                ],
              ))
        ],
      ),
    );
  }
}
