import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui/general/sized_box.dart';

class YoutubeUiScreen extends StatefulWidget {
  const YoutubeUiScreen({super.key});

  @override
  State<YoutubeUiScreen> createState() => _YoutubeUiScreenState();
}

class _YoutubeUiScreenState extends State<YoutubeUiScreen> {
  bool isHover = false;
  List data = [
    "All",
    "Mixes",
    "Music",
    "Live",
    "News",
    "Flutter",
    "Jukebox",
    "Indian soap operas",
  ];
  int select = 0;
  List<Map<String, dynamic>> allData = [
    {
      "name": "Ripples Code",
      "title": "Auto From Validation in Flutter || Getx",
      "views": "28k views",
      "time": "3 years ago",
      "image": Colors.grey,
      "logo": Colors.green,
    },
    {
      "name": "Abc",
      "title": "Validation in Flutter",
      "views": "30k views",
      "time": "2 years ago",
      "image": Colors.teal,
      "logo": Colors.red,
    },
    {
      "name": "Xyz",
      "title": "Validation in Flutter",
      "views": "30k views",
      "time": "1 years ago",
      "image": Colors.green,
      "logo": Colors.yellow,
    },
    {
      "name": "Nijsef",
      "title": "Validation in Flutter",
      "views": "1k views",
      "time": "4 years ago",
      "image": Colors.pink,
      "logo": Colors.teal,
    },
    {
      "name": "Abc",
      "title": "Validation in Flutter",
      "views": "30k views",
      "time": "2 years ago",
      "image": Colors.teal,
      "logo": Colors.red,
    },
    {
      "name": "Abc",
      "title": "Validation in Flutter",
      "views": "30k views",
      "time": "2 years ago",
      "image": Colors.yellow.shade100,
      "logo": Colors.green,
    },
    {
      "name": "Abc",
      "title": "Validation in Flutter",
      "views": "30k views",
      "time": "2 years ago",
      "image": Colors.pink.shade300,
      "logo": Colors.green.shade300,
    },
    {
      "name": "Abc",
      "title": "Validation in Flutter",
      "views": "30k views",
      "time": "2 years ago",
      "image": Colors.purple.shade100,
      "logo": Colors.grey,
    },
    {
      "name": "Abc",
      "title": "Validation in Flutter",
      "views": "30k views",
      "time": "2 years ago",
      "image": Colors.red,
      "logo": Colors.blue,
    },
  ];
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: width <= 520
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 0.04 * width),
                  child: Column(
                    children: [
                      (0.015 * height).addHSpace(),
                      Row(
                        children: [
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                isHover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            child: const Icon(Icons.menu),
                          ),
                          (0.03 * width).addWSpace(),
                          Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 0.015 * width,
                                vertical: 0.003 * height),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadius.circular(0.01 * height),
                            ),
                            child: const Icon(
                              Icons.play_arrow,
                              color: Colors.white,
                            ),
                          ),
                          (0.01 * width).addWSpace(),
                          Text(
                            "YouTube",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 0.045 * width,
                            ),
                          ),
                          const Spacer(),
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                isHover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            child: const Icon(Icons.search_sharp),
                          ),
                          (0.02 * width).addWSpace(),
                          InkResponse(
                              onTap: () {},
                              onHover: (value) {
                                setState(() {
                                  isHover = value;
                                });
                              },
                              hoverColor: Colors.grey.withOpacity(0.4),
                              child: const Icon(Icons.mic)),
                          (0.02 * width).addWSpace(),
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                isHover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            child: const Icon(Icons.video_call_outlined),
                          ),
                          (0.02 * width).addWSpace(),
                          InkResponse(
                            onTap: () {},
                            onHover: (value) {
                              setState(() {
                                isHover = value;
                              });
                            },
                            hoverColor: Colors.grey.withOpacity(0.4),
                            child: const Icon(Icons.notifications_active),
                          ),
                          (0.02 * width).addWSpace(),
                          CircleAvatar(
                            radius: 0.023 * height,
                            backgroundColor: Colors.purple.shade300,
                            child: const Text(
                              "H",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                      (0.015 * height).addHSpace(),
                      SizedBox(
                        height: 0.05 * height,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: data.length,
                          itemBuilder: (context, index) {
                            return InkResponse(
                              onTap: () {
                                setState(() {
                                  select = index;
                                });
                              },
                              onHover: (value) {
                                setState(() {
                                  isHover = value;
                                });
                              },
                              borderRadius:
                                  BorderRadius.circular(0.01 * height),
                              highlightShape: BoxShape.rectangle,
                              hoverColor: Colors.grey.withOpacity(0.1),
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    horizontal: 0.01 * width),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.05 * width,
                                    vertical: 0.01 * height),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(0.015 * height),
                                  color: select == index
                                      ? Colors.white
                                      : Colors.grey.withOpacity(0.2),
                                ),
                                child: Text(
                                  "${data[index]}",
                                  style: TextStyle(
                                    color: select == index
                                        ? Colors.black
                                        : Colors.white,
                                  ),
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      (0.01 * height).addHSpace(),
                      SizedBox(
                        height: context.height,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: allData.length,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.symmetric(
                                  vertical: 0.015 * height,
                                  horizontal: 0.02 * width),
                              child: Column(
                                children: [
                                  Container(
                                    height: 0.25 * height,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: allData[index]["image"],
                                      borderRadius:
                                          BorderRadius.circular(0.01 * height),
                                    ),
                                  ),
                                  (0.01 * height).addHSpace(),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        radius: 0.02 * height,
                                        backgroundColor: allData[index]["logo"],
                                      ),
                                      (0.02 * width).addWSpace(),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${allData[index]["title"]}",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 0.04 * width,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text(
                                            "${allData[index]["name"]}",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 0.03 * width,
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                "${allData[index]["views"]}",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 0.03 * width,
                                                ),
                                              ),
                                              (0.01 * width).addWSpace(),
                                              Icon(
                                                Icons.circle,
                                                color: Colors.grey,
                                                size: 0.01 * height,
                                              ),
                                              (0.01 * width).addWSpace(),
                                              Text(
                                                "${allData[index]["time"]}",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 0.03 * width,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                      const Spacer(),
                                      InkResponse(
                                        onTap: () {},
                                        child: const Icon(Icons.more_vert),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                )
              : width > 520 && width <= 1080
                  ? Column(
                      children: [
                        (0.01 * height).addHSpace(),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0.03 * width),
                          child: Row(
                            children: [
                              InkResponse(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    isHover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                child: const Icon(Icons.menu),
                              ),
                              (0.02 * width).addWSpace(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.015 * width,
                                    vertical: 0.003 * height),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.circular(0.01 * height),
                                ),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                              (0.01 * width).addWSpace(),
                              Text(
                                "YouTube",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 0.023 * width,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 0.05 * height,
                                width: 0.4 * width,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.4),
                                  borderRadius:
                                      BorderRadius.circular(0.04 * height),
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(0.4),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    TextField(
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                      decoration: InputDecoration(
                                        constraints: BoxConstraints.expand(
                                          height: 0.05 * height,
                                          width: 0.32 * width,
                                        ),
                                        hintText: "Search",
                                        filled: true,
                                        fillColor: Colors.black,
                                        hintStyle: TextStyle(
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 0.013 * width,
                                          vertical: 0.017 * height,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.horizontal(
                                            left:
                                                Radius.circular(0.03 * height),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.4),
                                          ),
                                        ),
                                      ),
                                    ),
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: Divider(
                                        height: 0,
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                    ),
                                    const Spacer(),
                                    InkResponse(
                                      onTap: () {},
                                      child: const Icon(Icons.search_sharp),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              InkResponse(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    isHover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                child: CircleAvatar(
                                  radius: 0.03 * height,
                                  backgroundColor: Colors.grey.withOpacity(0.3),
                                  child: const Icon(
                                    Icons.mic,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              InkResponse(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    isHover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                child: const Icon(Icons.video_call_outlined),
                              ),
                              (0.04 * width).addWSpace(),
                              InkResponse(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    isHover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                child: const Icon(Icons.notifications_active),
                              ),
                              (0.04 * width).addWSpace(),
                              CircleAvatar(
                                backgroundColor: Colors.purple.shade300,
                                child: const Text(
                                  "H",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        (0.01 * height).addHSpace(),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0.005 * width),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                children: [
                                  InkResponse(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        isHover = value;
                                      });
                                    },
                                    highlightShape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.circular(0.01 * height),
                                    hoverColor: Colors.grey.withOpacity(0.4),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.013 * width,
                                          vertical: 0.015 * height),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.home,
                                            size: 0.04 * width,
                                          ),
                                          Text(
                                            "Home",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 0.015 * width,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkResponse(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        isHover = value;
                                      });
                                    },
                                    highlightShape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.circular(0.01 * height),
                                    hoverColor: Colors.grey.withOpacity(0.4),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.013 * width,
                                          vertical: 0.015 * height),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.add,
                                            size: 0.04 * width,
                                          ),
                                          Text(
                                            "Shorts",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 0.015 * width),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkResponse(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        isHover = value;
                                      });
                                    },
                                    highlightShape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.circular(0.01 * height),
                                    hoverColor: Colors.grey.withOpacity(0.4),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.013 * width,
                                          vertical: 0.015 * height),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.subscriptions,
                                            size: 0.04 * width,
                                          ),
                                          Text(
                                            "Subscription",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 0.015 * width,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  InkResponse(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        isHover = value;
                                      });
                                    },
                                    highlightShape: BoxShape.rectangle,
                                    borderRadius:
                                        BorderRadius.circular(0.01 * height),
                                    hoverColor: Colors.grey.withOpacity(0.4),
                                    child: Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.013 * width,
                                          vertical: 0.015 * height),
                                      child: Column(
                                        children: [
                                          Icon(
                                            Icons.person,
                                            size: 0.04 * width,
                                          ),
                                          Text(
                                            "You",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 0.015 * width),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(
                                width: 0.86 * width,
                                child: Column(
                                  children: [
                                    (0.01 * height).addHSpace(),
                                    SizedBox(
                                      height: 0.05 * height,
                                      child: ListView.builder(
                                        scrollDirection: Axis.horizontal,
                                        shrinkWrap: true,
                                        itemCount: data.length,
                                        itemBuilder: (context, index) {
                                          return InkResponse(
                                            onTap: () {
                                              setState(() {
                                                select = index;
                                              });
                                            },
                                            onHover: (value) {
                                              setState(() {
                                                isHover = value;
                                              });
                                            },
                                            borderRadius: BorderRadius.circular(
                                                0.01 * height),
                                            highlightShape: BoxShape.rectangle,
                                            hoverColor:
                                                Colors.grey.withOpacity(0.1),
                                            child: Container(
                                              margin: EdgeInsets.symmetric(
                                                  horizontal: 0.01 * width),
                                              padding: EdgeInsets.symmetric(
                                                  horizontal: 0.02 * width,
                                                  vertical: 0.01 * height),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        0.015 * height),
                                                color: select == index
                                                    ? Colors.white
                                                    : Colors.grey
                                                        .withOpacity(0.2),
                                              ),
                                              child: Text(
                                                "${data[index]}",
                                                style: TextStyle(
                                                  color: select == index
                                                      ? Colors.black
                                                      : Colors.white,
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                    (0.01 * height).addHSpace(),
                                    SizedBox(
                                      height: context.height,
                                      width: double.infinity,
                                      child: GridView.builder(
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          mainAxisSpacing: 0.02 * height,
                                        ),
                                        itemCount: allData.length,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 0.02 * width),
                                            child: Column(
                                              children: [
                                                Container(
                                                  height: 0.25 * height,
                                                  width: double.infinity,
                                                  decoration: BoxDecoration(
                                                    color: allData[index]
                                                        ["image"],
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.01 * height),
                                                  ),
                                                ),
                                                (0.01 * height).addHSpace(),
                                                Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CircleAvatar(
                                                      radius: 0.02 * width,
                                                      backgroundColor:
                                                          allData[index]
                                                              ["logo"],
                                                    ),
                                                    (0.02 * width).addWSpace(),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 0.28 * width,
                                                          child: Text(
                                                            "${allData[index]["title"]}",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  0.022 * width,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                            ),
                                                          ),
                                                        ),
                                                        Text(
                                                          "${allData[index]["name"]}",
                                                          style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize:
                                                                0.021 * width,
                                                          ),
                                                        ),
                                                        Row(
                                                          children: [
                                                            Text(
                                                              "${allData[index]["views"]}",
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize:
                                                                    0.022 *
                                                                        width,
                                                              ),
                                                            ),
                                                            (0.01 * width)
                                                                .addWSpace(),
                                                            Icon(
                                                              Icons.circle,
                                                              color:
                                                                  Colors.grey,
                                                              size: 0.008 *
                                                                  height,
                                                            ),
                                                            (0.01 * width)
                                                                .addWSpace(),
                                                            Text(
                                                              "${allData[index]["time"]}",
                                                              style: TextStyle(
                                                                color:
                                                                    Colors.grey,
                                                                fontSize:
                                                                    0.022 *
                                                                        width,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ],
                                                    ),
                                                    const Spacer(),
                                                    InkResponse(
                                                      onTap: () {},
                                                      child: const Icon(
                                                          Icons.more_vert),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        (0.01 * height).addHSpace(),
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: 0.02 * width),
                          child: Row(
                            children: [
                              InkResponse(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    isHover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                child: const Icon(Icons.menu),
                              ),
                              (0.03 * width).addWSpace(),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.01 * width,
                                    vertical: 0.003 * height),
                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius:
                                      BorderRadius.circular(0.01 * height),
                                ),
                                child: const Icon(
                                  Icons.play_arrow,
                                  color: Colors.white,
                                ),
                              ),
                              (0.01 * width).addWSpace(),
                              Text(
                                "YouTube",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 0.02 * width,
                                ),
                              ),
                              const Spacer(),
                              Container(
                                height: 0.05 * height,
                                width: 0.35 * width,
                                decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.4),
                                  borderRadius:
                                      BorderRadius.circular(0.04 * height),
                                  border: Border.all(
                                    color: Colors.grey.withOpacity(0.4),
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    TextField(
                                      style: TextStyle(
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                      decoration: InputDecoration(
                                        constraints: BoxConstraints.expand(
                                          height: 0.05 * height,
                                          width: 0.3 * width,
                                        ),
                                        hintText: "Search",
                                        filled: true,
                                        fillColor: Colors.black,
                                        hintStyle: TextStyle(
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                        contentPadding: EdgeInsets.symmetric(
                                          horizontal: 0.013 * width,
                                          vertical: 0.017 * height,
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.horizontal(
                                            left:
                                                Radius.circular(0.03 * height),
                                          ),
                                          borderSide: BorderSide(
                                            color: Colors.grey.withOpacity(0.4),
                                          ),
                                        ),
                                      ),
                                    ),
                                    RotatedBox(
                                      quarterTurns: 1,
                                      child: Divider(
                                        height: 0,
                                        color: Colors.grey.withOpacity(0.4),
                                      ),
                                    ),
                                    const Spacer(),
                                    InkResponse(
                                      onTap: () {},
                                      child: const Icon(Icons.search_sharp),
                                    ),
                                    const Spacer(),
                                  ],
                                ),
                              ),
                              const Spacer(),
                              InkResponse(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    isHover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                child: CircleAvatar(
                                  radius: 0.03 * height,
                                  backgroundColor: Colors.grey.withOpacity(0.3),
                                  child: const Icon(
                                    Icons.mic,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Spacer(),
                              InkResponse(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    isHover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                child: const Icon(Icons.video_call_outlined),
                              ),
                              (0.04 * width).addWSpace(),
                              InkResponse(
                                onTap: () {},
                                onHover: (value) {
                                  setState(() {
                                    isHover = value;
                                  });
                                },
                                hoverColor: Colors.grey.withOpacity(0.4),
                                child: const Icon(Icons.notifications_active),
                              ),
                              (0.04 * width).addWSpace(),
                              CircleAvatar(
                                backgroundColor: Colors.purple.shade300,
                                child: const Text(
                                  "H",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        (0.01 * height).addHSpace(),
                        SizedBox(
                          height: 0.05 * height,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              return InkResponse(
                                onTap: () {
                                  setState(() {
                                    select = index;
                                  });
                                },
                                onHover: (value) {
                                  setState(() {
                                    isHover = value;
                                  });
                                },
                                borderRadius:
                                    BorderRadius.circular(0.01 * height),
                                highlightShape: BoxShape.rectangle,
                                hoverColor: Colors.grey.withOpacity(0.1),
                                child: Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 0.005 * width),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 0.02 * width,
                                      vertical: 0.01 * height),
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(0.015 * height),
                                    color: select == index
                                        ? Colors.white
                                        : Colors.grey.withOpacity(0.2),
                                  ),
                                  child: Text(
                                    "${data[index]}",
                                    style: TextStyle(
                                      color: select == index
                                          ? Colors.black
                                          : Colors.white,
                                    ),
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                        (0.01 * height).addHSpace(),
                        SizedBox(
                          height: context.height,
                          width: double.infinity,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3,
                              mainAxisSpacing: 0.02 * height,
                            ),
                            itemCount: allData.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.01 * width,
                                    vertical: 0.01 * height),
                                child: SizedBox(
                                  height: double.infinity,
                                  child: Column(
                                    children: [
                                      Container(
                                        height: 0.3 * height,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: allData[index]["image"],
                                          borderRadius: BorderRadius.circular(
                                              0.01 * height),
                                        ),
                                      ),
                                      (0.01 * height).addHSpace(),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CircleAvatar(
                                            radius: 0.018 * width,
                                            backgroundColor: allData[index]
                                                ["logo"],
                                          ),
                                          (0.01 * width).addWSpace(),
                                          Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                width: 0.25 * width,
                                                child: Text(
                                                  "${allData[index]["title"]}",
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 0.018 * width,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Text(
                                                "${allData[index]["name"]}",
                                                style: TextStyle(
                                                  color: Colors.grey,
                                                  fontSize: 0.015 * width,
                                                ),
                                              ),
                                              Row(
                                                children: [
                                                  Text(
                                                    "${allData[index]["views"]}",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 0.015 * width,
                                                    ),
                                                  ),
                                                  (0.01 * width).addWSpace(),
                                                  Icon(
                                                    Icons.circle,
                                                    color: Colors.grey,
                                                    size: 0.008 * height,
                                                  ),
                                                  (0.01 * width).addWSpace(),
                                                  Text(
                                                    "${allData[index]["time"]}",
                                                    style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 0.015 * width,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ],
                                      )
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
    );
  }
}
