import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_ui/provider/data_add_provider.dart';

class DataAddScreen extends StatefulWidget {
  const DataAddScreen({super.key});

  @override
  State<DataAddScreen> createState() => _DataAddScreenState();
}

class _DataAddScreenState extends State<DataAddScreen> {
  @override
  Widget build(BuildContext context) {
    // final dataAddProvider = Provider.of<DataAddProvider>(context);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Consumer<DataAddProvider>(
            builder: (context, dataAddProvider, child) => Column(
              children: [
                TextField(
                  controller: dataAddProvider.data,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    hintText: "Add Data",
                    hintStyle: const TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    dataAddProvider.dataAdd();
                  },
                  child: const Text("Submit"),
                ),
                Expanded(
                  child: dataAddProvider.storeData.isEmpty
                      ? const Center(
                          child: Text("data Not available"),
                        )
                      : ListView.builder(
                          itemCount: dataAddProvider.storeData.length,
                          itemBuilder: (context, index) {
                            return InkResponse(
                              onTap: () {
                                showDialog(
                                  context: context,
                                  builder: (context) {
                                    dataAddProvider.updateText.text =
                                        "${dataAddProvider.storeData[index]}";
                                    return Dialog(
                                      insetPadding: const EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 10),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          TextField(
                                            controller:
                                                dataAddProvider.updateText,
                                            decoration: InputDecoration(
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.circular(5),
                                                borderSide: const BorderSide(
                                                    color: Colors.black),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          TextButton(
                                            onPressed: () {
                                              dataAddProvider.updateData(index);
                                              Navigator.pop(context);
                                            },
                                            child: const Text("Update"),
                                          ),
                                          const SizedBox(height: 10),
                                          TextButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            child: const Text("Cancel"),
                                          ),
                                        ],
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.black),
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                padding:
                                    const EdgeInsets.only(right: 5, left: 15),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("${dataAddProvider.storeData[index]}"),
                                    IconButton(
                                      onPressed: () {
                                        dataAddProvider.removeData(index);
                                      },
                                      icon: const Icon(
                                        Icons.delete,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
