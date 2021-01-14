import 'package:flutter/material.dart';
import 'package:neostore_app/main.dart';
import 'package:neostore_app/product_list/database_helpher.dart';
import 'package:neostore_app/Model/todo.dart';

class TodoDetail extends StatefulWidget {

  final String appBarTitle;
  final Todo todo;

  TodoDetail(this.todo, this.appBarTitle);

  @override
  State<StatefulWidget> createState() {

    return TodoDetailState(this.todo, this.appBarTitle);
  }
}

class TodoDetailState extends State<TodoDetail> {

  DatabaseHelper helper = DatabaseHelper();

  String appBarTitle;
  Todo todo;

  TextEditingController titleController = TextEditingController();
  TextEditingController descriptionController = TextEditingController();

  TodoDetailState(this.todo, this.appBarTitle);

  @override
  Widget build(BuildContext context) {

    TextStyle textStyle = Theme.of(context).textTheme.title;

    titleController.text = todo.title;
    descriptionController.text = todo.description;

    return WillPopScope(

        onWillPop: () {
          moveToLastScreen();
        },

        child: Scaffold(
          appBar: AppBar(
            title: Text(appBarTitle),
            backgroundColor: appColor,
            leading: IconButton(icon: Icon(
                Icons.arrow_back),
                onPressed: () {
                  moveToLastScreen();
                }
            ),
          ),

          body: Padding(
            padding: EdgeInsets.only(top: 15.0, left: 10.0, right: 10.0),
            child: ListView(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: titleController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Title Text Field');
                      updateTitle();
                    },
                    decoration: InputDecoration(
                        labelText: 'Title',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: TextField(
                    controller: descriptionController,
                    style: textStyle,
                    onChanged: (value) {
                      debugPrint('Something changed in Description Text Field');
                      updateDescription();
                    },
                    decoration: InputDecoration(
                        labelText: 'Description',
                        labelStyle: textStyle,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0)
                        )
                    ),
                  ),
                ),

                // Fourth Element
                Padding(
                  padding: EdgeInsets.only(top: 15.0, bottom: 15.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: RaisedButton(
                          color: appColor,
                          textColor: Colors.white,
                          child: Text(
                            appBarTitle,
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Save button clicked");
                              _save();
                            });
                          },
                        ),
                      ),

                      Container(width: 5.0,),

                      Expanded(
                        child: RaisedButton(
                          color: appColor,
                          textColor: Colors.white,
                          child: Text(
                            'Delete',
                            textScaleFactor: 1.5,
                          ),
                          onPressed: () {
                            setState(() {
                              debugPrint("Delete button clicked");
                              _delete();
                            });
                          },
                        ),
                      ),

                    ],
                  ),
                ),


              ],
            ),
          ),

        ));
  }

  void moveToLastScreen() {
    Navigator.pop(context, true);
  }


  // Update the title of todo object
  void updateTitle(){
    todo.title = titleController.text;
  }

  // Update the description of todo object
  void updateDescription() {
    todo.description = descriptionController.text;
  }

  // Save data to database
  void _save() async {

    moveToLastScreen();

    int result;
    if (todo.id != null) {  // Case 1: Update operation
      result = await helper.updateTodo(todo);
    } else { // Case 2: Insert Operation
      result = await helper.insertTodo(todo);
    }

    if (result != 0) {  // Success
      _showAlertDialog('Status', 'Product Saved Successfully');
    } else {  // Failure
      _showAlertDialog('Status', 'Problem Saving Todo');
    }

  }


  void _delete() async {

    moveToLastScreen();

    if (todo.id == null) {
      _showAlertDialog('Status', 'No Product was deleted');
      return;
    }
    int result = await helper.deleteTodo(todo.id);
    if (result != 0) {
      _showAlertDialog('Status', 'Product Deleted Successfully');
    } else {
      _showAlertDialog('Status', 'Error Occured while Deleting Product');
    }
  }

  void _showAlertDialog(String title, String message) {

    AlertDialog alertDialog = AlertDialog(
      title: Text(title),
      content: Text(message),
    );
    showDialog(
        context: context,
        builder: (_) => alertDialog
    );
  }

}










