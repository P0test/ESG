import 'package:flutter/material.dart';

class Projects extends StatelessWidget {
  const Projects({
    Key? key,
    required this.projectList,
  }) : super(key: key);

  final List projectList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Text("Performance Metrics", textAlign: TextAlign.center, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
            Image.asset("assets/graph.png", width: double.infinity, height: 400,),
            Divider(height: 20,thickness: 5,indent: 20,endIndent: 20,color: Color(0xFF6200EE)),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(projectList[0]["path"], height: 75, width: 90, fit: BoxFit.cover,),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(projectList[0]["name"], textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 18,),
                      Text(projectList[0]["description"], textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(projectList[1]["path"], height: 75, width: 90, fit: BoxFit.cover,),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(projectList[1]["name"], textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 18,),
                      Text(projectList[1]["description"], textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(projectList[2]["path"], height: 75, width: 90, fit: BoxFit.cover,),
                  SizedBox(width: 20,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(projectList[2]["name"], textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: 18,),
                      Text(projectList[2]["description"], textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 16)),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}