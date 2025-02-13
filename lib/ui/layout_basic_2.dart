import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class LayoutBasic2 extends StatelessWidget {
  const LayoutBasic2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text.rich(
              TextSpan(
                text: "Xin chao, ",
                style: TextStyle(fontSize: 16.0),
                children: [
                  TextSpan(
                    text: "Vi Hong Minh",
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.lightBlueAccent,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Icon(LucideIcons.github, color: Colors.blueAccent),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
                flex: 1,
                child: SizedBox(
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return Container(
                        width: 70,
                        margin: EdgeInsets.only(right: 16.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [Colors.white70, Colors.blueAccent],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter),
                            borderRadius: BorderRadius.circular(16.0)),
                      );
                    },
                  ),
                )),
            SizedBox(
              height: 35,
            ),
            Expanded(
              flex: 9,
              child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            "${6 + index}:00 ${(6 + index) <= 12 ? "AM" : "PM"}",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                colors: [Colors.white70, Colors.lightBlue],
                                begin: Alignment.topRight,
                                end: Alignment.bottomRight,
                              ),
                              borderRadius: BorderRadius.circular(3.0),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
