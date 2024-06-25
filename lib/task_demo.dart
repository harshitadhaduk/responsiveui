import 'package:flutter/material.dart';

class TaskDemo extends StatefulWidget {
  const TaskDemo({super.key});

  @override
  State<TaskDemo> createState() => _TaskDemoState();
}

class _TaskDemoState extends State<TaskDemo> {
  List color = [
    Colors.green.shade100,
    Colors.pink.shade100,
    Colors.yellow.shade100
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: width <= 520
          ? ListView.builder(
              itemCount: color.length,
              itemBuilder: (context, index) {
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  height: 0.1 * height,
                  width: 0.2 * width,
                  color: color[index],
                );
              },
            )
          : width <= 1080 && width > 520
              ? Center(
                  child: GridView.builder(
                    itemCount: color.length,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: 0.03 * width, vertical: 0.04 * height),
                        height: 0.05 * height,
                        width: 0.2 * width,
                        color: color[index],
                      );
                    },
                  ),
                )
              : ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: color.length,
                  itemBuilder: (context, index) {
                    return Center(
                      child: Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        height: 0.3 * height,
                        width: 0.2 * width,
                        color: color[index],
                      ),
                    );
                  },
                ),
    );
  }
}
