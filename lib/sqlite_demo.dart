import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class SqLiteDemoScreen extends StatefulWidget {
  const SqLiteDemoScreen({super.key});

  @override
  State<SqLiteDemoScreen> createState() => _SqLiteDemoScreenState();
}

class _SqLiteDemoScreenState extends State<SqLiteDemoScreen> {
  Database? database;

  @override
  void initState() {
    createDatabase();
    super.initState();
  }

  Future createDatabase() async {
    // Get a location using getDatabasesPath
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, 'demo.db');

    database = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      // When creating the db, create the table
      await db.execute(
          'CREATE TABLE Test (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');

      await db.execute(
          'CREATE TABLE Demo (id INTEGER PRIMARY KEY, name TEXT, value INTEGER, num REAL)');
    });
  }

  Future getData() async {
    List<Map<String, dynamic>> data = await database!.query("Test");
    List<Map<String, dynamic>> demoData = await database!.query("Demo");

    print("DATA $data");
    print("DEMO DATA $demoData");
  }

  Future insertData() async {
    await database!
        .insert("Test", {"id": 1, "name": "sbc", "value": 100, "num": 100.0});
    await database!
        .insert("Demo", {"id": 1, "name": "demo", "value": 200, "num": 200.0});
  }

  Future updateData() async {
    database!
        .update("Test", {"value": 200}, where: "value=?", whereArgs: [100]);
    database!.update("Demo", {"name": "SqLite Demo"},
        where: "name=?", whereArgs: ["demo"]);
  }

  Future deleteData() async {
    database!.delete("Test", where: "value=?", whereArgs: [200]);
    database!.delete("Demo", where: "name=?", whereArgs: ["SqLite Demo"]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                getData();
              },
              child: const Text("Get"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                insertData();
              },
              child: const Text("Insert"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                updateData();
              },
              child: const Text("Update"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                deleteData();
              },
              child: const Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
