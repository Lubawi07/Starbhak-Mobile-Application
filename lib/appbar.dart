import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lubawi_projek_mobile/items_widget.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: [
                  TabBar(
                    isScrollable: true,
                    indicator: BoxDecoration(),
                    labelStyle: TextStyle(fontSize: 20),
                    labelPadding: EdgeInsets.symmetric(horizontal: 20),
                    tabs: [
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(children: [
                           Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 95, 79, 79)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "images/all.png",
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(height: 5), // Jarak ke bawah sebelum teks "ALL"
                  Text(
                    "Semua",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF232227),
                    ),
                  ),
                        ]
                          )
                        ),
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(children: [
                           Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 95, 79, 79)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "images/hamburger.png",
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(height: 5), // Jarak ke bawah sebelum teks "ALL"
                  Text(
                    "Makanan",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF232227),
                    ),
                  ),
                 ]
                  )
                  ),          
                      Padding(
                        padding: EdgeInsets.all(8),
                        child: Column(children: [
                           Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 95, 79, 79)
                              .withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Image.asset(
                      "images/soda.png",
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(height: 5), // Jarak ke bawah sebelum teks "ALL"
                  Text(
                    "Minuman",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xFF232227),
                    ),
                  ),
                 ]
                  )
                  ),          
                  ],
                  ),

                  Flexible(
                    flex: 1,
                    child: TabBarView(children: [
                      ItemsWidget(),
                      ItemsWidget(),
                      ItemsWidget(),
                    ]),
                  )
                  
                ],
              ),
            ),
          ),
          





          backgroundColor: Colors.white,
          appBar: AppBar(
            title: const Text('Starbhak Mart'),
            backgroundColor: Colors.blueAccent,
            actions: <Widget>[
              IconButton(
                icon: const Icon(Icons.person),
                onPressed: () {},
              )
            ],
            leading: IconButton(
              onPressed: () {},
              icon: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {},
              ),
            ),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            )),
          )
          ),
    );
  }
}
