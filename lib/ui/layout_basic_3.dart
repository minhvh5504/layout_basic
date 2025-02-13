import 'package:flutter/material.dart';

class LayoutBasic3 extends StatelessWidget {
  const LayoutBasic3({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      height: 300,
                      color: Colors.white70,
                      alignment: Alignment.center,
                      child: Center(
                        child: RotatedBox(
                          quarterTurns: 3,
                          child: Align(
                              child: Text(
                            "Welcome",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                color: Colors.black87),
                          )),
                        ),
                      ),
                    )),
                Expanded(
                    flex: 2,
                    child: Container(
                      height: 300,
                      decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(50.0))),
                    ))
              ],
            ),
            Padding(
              padding: EdgeInsets.all(24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Iste autem atque ea ratione ut ex omnis non.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                  SizedBox(height: 20),
                  Container(
                    height: 35,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(6.0)),
                  ),
                  SizedBox(height: 20),
                  Text(
                      "Consequuntur qui ea dolores voluptas pariatur.\nAperiam natus soluta enum nam.",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54)),
                  SizedBox(height: 20),
                  Text(
                      "Iure aut qui et.Ipsa animi voluptates distioction officiis enum exercitationem\n"
                      "suscipit reiciendis. Quisquam deserunt rerum sapiente. Et porro officiis\n"
                      "consequatur hic aliquam. Molestiae aut qui quia voluptatem. Voluptates\n"
                      "placeat distinction sunt aut.\n",
                      style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          color: Colors.black54)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text("Aut aut debitis",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54)),
                      Text("Aut aut debitis",
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.black54))
                    ],
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 190,
                    decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(80.0),
                            topRight: Radius.circular(80.0))),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
