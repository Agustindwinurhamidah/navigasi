import 'package:navigasi/models/item.dart';
import 'package:navigasi/pages/item_page.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
class HomePage extends StatelessWidget{
  final List<Item>items=[
    Item(name: 'Sugar', jenis:'bumbu',merk: 'GULAKU', price: 5000, jumlah: 2),
    Item(name: 'Salt' ,jenis:'bumbu',merk: 'KAPAL',price: 2000, jumlah: 4),
    Item(name: 'Chili' ,jenis:'bumbu dapur',merk: 'LOMBOK', price: 8000, jumlah: 9),
    Item(name: 'Onions' ,jenis:'bumbu dapur',merk: 'OLIOO', price: 10000, jumlah: 3),
    Item(name: 'Mushrom' ,jenis:'sayur',merk: 'MANTAP', price: 3000, jumlah: 1),
    Item(name: 'Pepper' ,jenis:'bumbu dapur',merk: 'LADAKU', price: 2000, jumlah: 5)
    
  ];
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title : 'Shopping',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
        title: Text("Shopping"),
        centerTitle: true,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index){
            final item = items[index];
            return InkWell(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context)=> ItemPage(tempItem: item)),
                  );
              },
              child: Card(
                child: Container(
                  margin: EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Expanded(child: Text(item.name)),
                      Expanded(child: Text(item.jenis)),
                      Expanded(child: Text(item.merk)),
                      Expanded(
                        child: Text(
                          item.price.toString(),
                        )
                      ),
                      Expanded(
                        child: Text(
                          item.jumlah.toString(),
                          textAlign:TextAlign.end
                        )
                      )
                    ],
                  ),
                  )
                ),
            );
          }
        ),
      ),
      )
    );
  }
}