import 'package:flutter/material.dart';

class Trade extends StatelessWidget {
  const Trade({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [
          Row(
            children: [
              Text("Requested for Quote", textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
              Spacer(),
              Text("more"),
            ],
          ),
          Row(
            children: [
              QuoteBox(name: 'Solar', price: "30-40", path: "assets/solar.jpeg"),
              QuoteBox(name: 'Wind', price: "60-80", path: "assets/wind.jpeg"),
              QuoteBox(name: 'Biodiversity', price: "45-85", path: "assets/biodiversity.jpeg")
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Text("Purchase", textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
              Spacer(),
              Text("more"),
            ],
          ),
          Row(
            children: [
              QuoteBox(name: 'G. Solar', price: "40", path: "assets/Gsolar.jpeg"),
              QuoteBox(name: 'F. wind', price: "60", path: "assets/Fwind.jpeg"),
              QuoteBox(name: 'Y. Forestry', price: "97", path: "assets/Forest.jpeg")
            ],
          ),
          SizedBox(height: 12,),
          Row(
            children: [
              Text("Sell", textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.bold)),
              Spacer(),
              Text("more"),
            ],
          ),
          Row(
            children: [
              QuoteBox(name: 'IST. Solar', price: "102", path: "assets/ISTsolar.jpeg"),
              QuoteBox(name: 'HAN. Wind', price: "11", path: "assets/HANwind.jpeg"), 
            ],
          ),
        ],
      ),
    );
  }
}

class QuoteBox extends StatelessWidget {
  final String path;
  final String name;
  final String price;
  const QuoteBox({
    Key? key,
    required this.path,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Row(
        children: [
          Column(
            children: [
              Image.asset(path, height: 75,  width: 90, fit: BoxFit.cover,),
              Text(name, style: TextStyle(fontSize: 18, ),),
              Row(
                children: [Icon(Icons.sunny,size: 20.0),
                Text(price, textAlign: TextAlign.start, style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.bold)),],
              )
            ],
          )
        ],
              ),
    );
  }
}
