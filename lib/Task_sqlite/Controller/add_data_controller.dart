import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class AddDataController extends GetxController {
  TextEditingController idController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  TextEditingController numController = TextEditingController();

  TextEditingController idNewController = TextEditingController();
  TextEditingController nameNewController = TextEditingController();
  TextEditingController valueNewController = TextEditingController();
  TextEditingController numNewController = TextEditingController();
  Rx<List<dynamic>> data = Rx<List<dynamic>>([]);
  Database? database;

  @override
  void onInit() {
    super.onInit();
    createDatabase();
  }

  void createDatabase() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE AllData (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    });

    await getData();
  }

  Future getData() async {
    data.value = await database!.query("AllData");
    print("${data.value}");
  }

  void insertData() async {
    database!.insert(
      "AllData",
      {
        "id": idController.text,
        "name": nameController.text,
        "value": valueController.text,
        "num": numController.text,
      },
    );
    await getData();
    idController.clear();
    nameController.clear();
    valueController.clear();
    numController.clear();
  }

  void updateData(int updateIndex) async {
    await database!.update(
      "AllData",
      {
        // "id": idNewController.text,
        "name": nameNewController.text,
        "value": valueNewController.text,
        "num": numNewController.text,
      },
      where: "id=?",
      whereArgs: ["${data.value[updateIndex]["id"]}"],
    );
    await getData();
  }

  void createList(context) {
    showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFieldDemo(
                    controller: idController,
                    textInputType: TextInputType.number,
                    text: "Id"),
                const SizedBox(height: 5),
                TextFieldDemo(
                    controller: nameController,
                    textInputType: TextInputType.text,
                    text: "Name"),
                const SizedBox(height: 5),
                TextFieldDemo(
                    controller: valueController,
                    textInputType: TextInputType.number,
                    text: "Value"),
                const SizedBox(height: 5),
                TextFieldDemo(
                    controller: numController,
                    textInputType: TextInputType.number,
                    text: "Num"),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    insertData();
                    Navigator.pop(context);
                  },
                  child: const Text("Add Data"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  void updateList(context, index) {
    showDialog(
      context: context,
      builder: (context) {
        idNewController.text = "${data.value[index]["id"]}";
        nameNewController.text = "${data.value[index]["name"]}";
        valueNewController.text = "${data.value[index]["value"]}";
        numNewController.text = "${data.value[index]["num"]}";
        return Dialog(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextFieldDemo(
                    controller: idNewController,
                    textInputType: TextInputType.number),
                const SizedBox(height: 5),
                TextFieldDemo(
                    controller: nameNewController,
                    textInputType: TextInputType.text),
                const SizedBox(height: 5),
                TextFieldDemo(
                    controller: valueNewController,
                    textInputType: TextInputType.number),
                const SizedBox(height: 5),
                TextFieldDemo(
                  controller: numNewController,
                  textInputType: TextInputType.number,
                ),
                const SizedBox(height: 5),
                ElevatedButton(
                  onPressed: () {
                    updateData(index);
                    Navigator.pop(context);
                  },
                  child: const Text("Update Data"),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TextFieldDemo extends StatefulWidget {
  final controller;
  final textInputType;
  final text;
  const TextFieldDemo({
    super.key,
    this.controller,
    this.textInputType,
    this.text,
  });

  @override
  State<TextFieldDemo> createState() => _TextFieldDemoState();
}

class _TextFieldDemoState extends State<TextFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      keyboardType: widget.textInputType,
      decoration: InputDecoration(
        border: const OutlineInputBorder(),
        hintText: widget.text,
      ),
    );
  }
}
