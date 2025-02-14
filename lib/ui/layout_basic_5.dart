import 'package:flutter/material.dart';

List<Color> lightcolor = [
  Colors.deepOrange.shade300,
  Colors.greenAccent.shade400,
  Colors.pink.shade300,
];
List<Color> darkcolor = [
  Colors.deepOrange.shade500,
  Colors.greenAccent.shade700,
  Colors.pink.shade500,
];

List<Map<String, String>> tasks = [
  {
    "job": "Study",
    "title": "Hoc tap",
    "time": "8 AM - 12 PM",
    "description": "Hoc tap cham chi de phat trien ban than va cong viec.",
  },
  {
    "job": "Sport",
    "title": "Tap the duc",
    "time": "6 AM - 7 AM",
    "description": "Ren luyen suc khoe voi bai tap nhe nhang moi sang.",
  },
  {
    "job": "Relax",
    "title": "Doc sach",
    "time": "9 PM - 10 PM",
    "description": "Thu gian buoi toi bang cach doc sach yeu thich.",
  },
];

class LayoutBasic5 extends StatelessWidget {
  const LayoutBasic5({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "TODOLIST-APP",
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.black54),
                        ),
                        Spacer(),
                        Container(
                          height: 50,
                          width: 130,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.deepOrange.shade200,
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.deepOrange.shade200,
                                  blurRadius: 20,
                                  spreadRadius: 5)
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Add Task",
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontStyle: FontStyle.italic,
                                  color: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Daily task",
                      style: TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54),
                    ),
                  ]),
            ),
            SizedBox(height: 9),
            Container(
              height: 670,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.deepOrange.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.deepOrange.shade100,
                      blurRadius: 20,
                      spreadRadius: 5)
                ],
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: tasks.length,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      SizedBox(height: 30),
                      Row(
                        children: [
                          RotatedBox(
                            quarterTurns: 3,
                            child: Container(
                              height: 50,
                              width: 170,
                              decoration: BoxDecoration(
                                color: lightcolor[index % lightcolor.length],
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                    color:
                                        lightcolor[index % lightcolor.length],
                                    blurRadius: 20,
                                    spreadRadius: 6,
                                  ),
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  tasks[index]["job"] ?? "",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    fontStyle: FontStyle.italic,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Spacer(),
                          Stack(children: [
                            Container(
                              height: 170,
                              width: 280,
                              decoration: BoxDecoration(
                                color: lightcolor[index % lightcolor.length],
                                borderRadius: BorderRadius.circular(24),
                              ),
                              child: Padding(
                                padding: EdgeInsets.only(
                                    top: 30, left: 50, right: 20),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      tasks[index]["title"] ?? "",
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white70,
                                      ),
                                    ),
                                    SizedBox(height: 10),
                                    Text(
                                      tasks[index]["time"] ?? "",
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.red.shade500,
                                      ),
                                    ),
                                    SizedBox(height: 2),
                                    Text(
                                      tasks[index]["description"] ?? "",
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              left: 0,
                              bottom: 0,
                              child: Container(
                                width: 30,
                                decoration: BoxDecoration(
                                  color: darkcolor[index % darkcolor.length],
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20),
                                  ),
                                ),
                              ),
                            ),
                          ]),
                        ],
                      ),
                    ]);
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
