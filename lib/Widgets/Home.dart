import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: [
          const SizedBox(height: 18,),
          const Text("NEWS & UPDATE", style: TextStyle(color: Color(0xFF171CC8), fontSize: 22), textAlign: TextAlign.center,),
          const Text("Industrial Trend of Renewable Energy 2022", style: TextStyle(color: Color(0xFF171CC8), fontSize: 20), textAlign: TextAlign.center,),
          Stack(
            children: [
              Image.asset("assets/main_background.png", width: double.infinity, height: 150, fit: BoxFit.cover,),
              Container( color: const Color.fromARGB(170, 255, 255, 255), width: double.infinity, height: 150,),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 32.0, vertical: 8),
                child: Text("Both solar and wind PV are capable of reducing the power sector dependence of the EU on natural gas supplied by Russia by 2023. It is worth nothing that annual additions to renewable capacity broke a new record in the previous year as it increased 6 percent in spite of the supply chain challenges associated ...(read more)", style: TextStyle(color: Colors.black, fontSize: 14)),
              ),
            ],
          ),
          const Divider(height: 20,thickness: 5,indent: 150,endIndent: 150,color: Color(0xFF6200EE),),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Latest Hotties", textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.sunny,size: 24.0),
                        Text("450", textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold)),
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Image.asset("assets/latest_hotties.jpeg", height: 100),
                    SizedBox(width: 18,),
                    Flexible(child: Text("Part of the 120MW solar park in Penang, Malaysia was approved with Sky-Token for their 'workdone' on grid stabilization ... (read more)", style: TextStyle(color: Colors.black, fontSize: 14))),
                  ],
                ),
                const SizedBox(height: 18,),
                const Divider(height: 20,thickness: 5,indent: 150,endIndent: 150,color: Color(0xFF6200EE)),
                Row(children: [Icon(Icons.online_prediction,size: 56.0, color: Colors.grey),Text("Sky-Token 101", textAlign: TextAlign.start, style: TextStyle(color: Color(0xFF096ABA), fontSize: 20, fontWeight: FontWeight.bold))]),
                Text("As you contribute to each kWh of power generation/saving, you will be award a Sky-Token, which you will be eligible to trade or store, while facing energy scarcity, you can also choose to exchange for certain kWh with our local energy distributor", style: TextStyle(color: Colors.black, fontSize: 14)),
                Row(children: [Icon(Icons.online_prediction,size: 56.0, color: Colors.grey),Text("Sky-Token 102", textAlign: TextAlign.start, style: TextStyle(color: Color(0xFF096ABA), fontSize: 20, fontWeight: FontWeight.bold))]),
                Text("As you contribute to each kWh of power generation/saving, you will be award a Sky-Token, which you will be eligible to trade or store, while facing energy scarcity, you can also choose to exchange for certain kWh with our local energy distributor", style: TextStyle(color: Colors.black, fontSize: 14)),
                Row(children: [Icon(Icons.online_prediction,size: 56.0, color: Colors.grey),Text("Sky-Token 10", textAlign: TextAlign.start, style: TextStyle(color: Color(0xFF096ABA), fontSize: 20, fontWeight: FontWeight.bold))]),
                Text("As you contribute to each kWh of power generation/saving, you will be award a Sky-Token, which you will be eligible to trade or store, while facing energy scarcity, you can also choose to exchange for certain kWh with our local energy distributor", style: TextStyle(color: Colors.black, fontSize: 14)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
