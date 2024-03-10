import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    Key? key,
    required this.projectList,
  }) : super(key: key);

  final List projectList;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true ,
        itemCount: projectList.length,
        itemBuilder: (context, index){
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(projectList[index]["path"], height: 100, width: 150, fit: BoxFit.cover,),
                SizedBox(width: 20,),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(projectList[index]["name"], textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: 18,),
                    Text(projectList[index]["description"], textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 14)),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
