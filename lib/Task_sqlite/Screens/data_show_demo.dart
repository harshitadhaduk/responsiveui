import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/Task_sqlite/Controller/add_data_controller.dart';

class DataShowDemoScreen extends GetView<AddDataController> {
  const DataShowDemoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(AddDataController());
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.createList(context);
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Obx(
          () => controller.data.value.isEmpty
              ? const Center(
                  child: Text("No data"),
                )
              : ListView.builder(
                  itemCount: controller.data.value.length,
                  itemBuilder: (context, index) {
                    return InkResponse(
                      onTap: () {
                        controller.updateList(context, index);
                      },
                      child: Container(
                        height: 100,
                        width: double.infinity,
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Text("Id : ${controller.data.value[index]["id"]}"),
                            Text(
                                "Name : ${controller.data.value[index]["name"]}"),
                            Text(
                                "Value : ${controller.data.value[index]["value"]}"),
                            Text(
                                "Num : ${controller.data.value[index]["num"]}"),
                          ],
                        ),
                      ),
                    );
                  },
                ),
        ),
      ),
    );
  }
}
