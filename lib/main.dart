import 'package:energy_token_platform/Widgets/AppHeader.dart';
import 'package:energy_token_platform/Widgets/Home.dart';
import 'package:energy_token_platform/Widgets/Projects.dart';
import 'package:energy_token_platform/Widgets/Search.dart';
import 'package:energy_token_platform/Widgets/Trade.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prozparity Energy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Prozparity Energy'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
    int _selectedIndex = 0;
    List<Widget> _tabPage(){
      List<dynamic> projectList = [
        {"name": "Solar Power @ Istanbul","path": "assets/project_1.jpeg", "description": "In operation"},
        {"name": "Wind Farm @ Hanoi","path": "assets/project_2.jpeg", "description": "Asset Management Stage"},
        {"name": "Forestry @ Cebu","path": "assets/project_3.jpeg", "description": "Initial planning"},
        {"name": "Plantation","path": "assets/project_4.png", "description": "Project partnership"},
        {"name": "Biodiversity","path": "assets/project_5.jpeg", "description": "Under Administrative review"},
        {"name": "Solar Power @ Istanbul","path": "assets/project_1.jpeg", "description": "In operation"},
        {"name": "Wind Farm @ Hanoi","path": "assets/project_2.jpeg", "description": "Asset Management Stage"},
        {"name": "Forestry @ Cebu","path": "assets/project_3.jpeg", "description": "Initial planning"},
        {"name": "Plantation","path": "assets/project_4.png", "description": "Project partnership"},
        {"name": "Biodiversity","path": "assets/project_5.jpeg", "description": "Under Administrative review"},
      ];
      return [
        Home(),
        Search(projectList: projectList),
        Trade(),
        Projects(projectList: projectList),
        Expanded(child: ListView(
          children: [
            ElevatedButton(
              onPressed: (){},
              child: const Text('Inbox' , style: TextStyle(fontSize: 32),textAlign: TextAlign.start,),
            ),
            ElevatedButton(
              onPressed: (){},
              child: const Text('Setting' , style: TextStyle(fontSize: 32),textAlign: TextAlign.start,),
            ),
            ElevatedButton(
              onPressed: (){},
              child: const Text('Account & Security', style: TextStyle(fontSize: 32),textAlign: TextAlign.start,),
            ),
          ],
        ))
      ];
    }
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            AppHeader(),
            _tabPage().elementAt(_selectedIndex)
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Color(0xFFB592F9),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
            backgroundColor: Color(0xFFB592F9),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.attach_money),
            label: 'Trade',
            backgroundColor: Color(0xFFB592F9),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.solar_power ),
            label: 'Your Project',
            backgroundColor: Color(0xFFB592F9),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Color(0xFFB592F9),
          ),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
