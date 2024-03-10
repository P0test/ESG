import 'package:flutter/material.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFF6200EE)
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          children: [
            Image.asset("assets/logo.png", width: 150,),
            Spacer(),
            Flexible(flex: 2, child: Text("Token as per energy workdone contribution", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 14)))
          ],
        ),
      ),
    );
  }
}