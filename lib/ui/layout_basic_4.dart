import 'package:flutter/material.dart';
import 'package:lucide_icons/lucide_icons.dart';

class LayoutBasic4 extends StatelessWidget {
  const LayoutBasic4({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Training",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text(
                  "Enhance your skills",
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black54),
                ),
                Spacer(),
                Row(
                  children: [
                    Text("Detail",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.amber)),
                    SizedBox(width: 10),
                    Icon(
                      LucideIcons.arrowRight,
                      size: 25,
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),
            Container(
              height: 180,
              width: 400,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(60.0),
                  bottomLeft: Radius.circular(30.0),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Vi-Hong-Minh",
                      style: TextStyle(
                          fontSize: 14,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Unlock your potential with\n"
                      "expert training",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Colors.white70),
                    ),
                    Spacer(),
                    Row(
                      children: [
                        SizedBox(width: 10),
                        Icon(
                          LucideIcons.arrowRightCircle,
                          size: 30,
                          color: Colors.white70,
                        ),
                        SizedBox(width: 10),
                        Text(
                          "Minh",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white70),
                        ),
                        Spacer(),
                        Center(
                          child: Container(
                            height: 45,
                            width: 80,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(25.0)),
                            child: Icon(
                              LucideIcons.settings,
                              color: Colors.amber,
                            ),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Popular Courses",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
            SizedBox(height: 10),
            SizedBox(
              height: 70,
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
                            colors: [Colors.white70, Colors.amber],
                            begin: Alignment.topCenter,
                            end: Alignment.center),
                        borderRadius: BorderRadius.circular(16.0)),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Explore More",
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black54),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 0.8,
                ),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    padding: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.amber,
                          blurRadius: 2,
                          spreadRadius: 2,
                          offset: Offset(0, 4),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          LucideIcons.github,
                          size: 40,
                          color: Colors.amber,
                        ),
                        SizedBox(height: 10),
                        Text(
                          "View Course $index",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black54,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
