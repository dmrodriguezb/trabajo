import 'package:flutter/material.dart';
import 'package:todo_app/models/category.dart';
import 'package:todo_app/services/category_service.dart';
import 'home_screen.dart';

class CategoriesScreen extends StatefulWidget{
  @override
  _CategoriesScreenState createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen>{
  var _categoryName = TextEditingController();
  var _categoryDescription = TextEditingController();
  var _category = Category();
  var _categoryService = CategoryService();

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ToDo App"),
        leading: ElevatedButton(
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: (){
            Navigator.of(context).push(
              MaterialPageRoute(
                  builder: (context)  => HomeScreen()
              )
            );
          },
        ),
      ),
        body: Center(
        child: Text("Welcome to Categories screen!"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          _showFormInDialog(context);
        },
        child: Icon(Icons.add),
      ),
    );
  }
  _showFormInDialog(BuildContext context){
    return showDialog(context: context,
        barrierDismissible: true,
    builder: (param){
      return AlertDialog(
      actions: [
        TextButton(onPressed: (){
            _category.name = _categoryName.text;
            _category.description = _categoryDescription.text;
            _categoryService.saveCategory(_category);
            },
            child: Text("Save")),
        TextButton(onPressed: (){},
            child: Text("Cancel")),
      ],
        title:  Text("Category Form"),
        content: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Category Name",
                  hintText: "Write category name"
                ),
                controller: _categoryName,
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Category Description",
                  hintText: "Write category description"
                ),
                  controller: _categoryDescription,
              )
            ],
          ),
        ),
      );
    });
  }
}