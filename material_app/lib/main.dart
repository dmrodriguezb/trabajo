import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(
   MaterialApp(
     theme: ThemeData(primarySwatch: Colors.purple),
     home: Scaffold(
       appBar: AppBar(
         title: Text("App Title"),
         actions: [
           Icon(Icons.search),
         Icon(Icons.shopping_cart)],
         ),
         drawer: Drawer(),
         body: Home(),
         floatingActionButton: FloatingActionButton(
           child: Icon(Icons.add),
           onPressed: (){},
           ),
           bottomNavigationBar: BottomNavigationBar(
             items: [
               BottomNavigationBarItem(
               icon:Icon(Icons.home,
               color: Colors.indigo),
               title:Text("Home",
               style: TextStyle(
                 fontSize: 20,
                 fontWeight: FontWeight.bold,
                 color: Colors.teal),
                 ),
               ),
               BottomNavigationBarItem(
               icon: Icon(Icons.person,
               color: Colors.pink),
               title:Text ("Account")
               ),
                ],
              ),
           ),
     ),
  );
}
