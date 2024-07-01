import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui/general/sized_box.dart';

class YoutubeUiScreen extends StatefulWidget {
  const YoutubeUiScreen({super.key});

  @override
  State<YoutubeUiScreen> createState() => _YoutubeUiScreenState();
}

class _YoutubeUiScreenState extends State<YoutubeUiScreen> {
  ScrollController scrollController = ScrollController();
  ScrollController scrollController2 = ScrollController();
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
  List<Map<String, dynamic>> allData2 = [
    {"icon": Icons.home, "name": "Home"},
    {"icon": Icons.send, "name": "Shorts"},
    {"icon": Icons.subscriptions, "name": "Subscription"},
    {"icon": Icons.history, "name": "History"},
    {"icon": Icons.playlist_add, "name": "Playlists"},
    {"icon": Icons.watch_later_outlined, "name": "Watch Later"},
    {"icon": Icons.thumb_up_alt_outlined, "name": "Liked videos"},
    {"icon": Icons.trending_down, "name": "Trending"},
    {"icon": Icons.shopping_bag_outlined, "name": "Shopping"},
    {"icon": Icons.music_note, "name": "Music"},
    {"icon": Icons.drive_file_move, "name": "Films"},
    {"icon": Icons.connect_without_contact_outlined, "name": "Live"},
    {"icon": Icons.games, "name": "Gaming"},
    {"icon": Icons.newspaper, "name": "News"},
    {"icon": Icons.ac_unit, "name": "Sport"},
    {"icon": Icons.check_box_outline_blank_rounded, "name": "Course"},
    {"icon": Icons.e_mobiledata_sharp, "name": "Fashion & Beauty"},
    {"icon": Icons.podcasts, "name": "Podcasts"},
    {"icon": Icons.play_arrow, "name": "YouTube Premium"},
    {"icon": Icons.play_arrow, "name": "YouTube Music"},
    {"icon": Icons.play_arrow, "name": "YouTube Kids"},
    {"icon": Icons.settings, "name": "Setting"},
    {"icon": Icons.flag, "name": "Report History"},
    {"icon": Icons.help, "name": "Help"},
    {"icon": Icons.help_center_outlined, "name": "Send FeedBack"},
    {"icon": Icons.abc, "name": ""},
  ];
  int selectFunction = 0;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const NeverScrollableScrollPhysics(),
          child: width <= 600
              ? Stack(
                  children: [
                    RawScrollbar(
                      controller: scrollController,
                      thumbVisibility: true,
                      thickness: 0.016 * width,
                      thumbColor: Colors.grey,
                      padding: EdgeInsets.symmetric(vertical: 0.025 * height),
                      child: Padding(
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
                                  return InkWell(
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
                                    hoverColor: Colors.grey.withOpacity(0.1),
                                    child: Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 0.01 * width),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.05 * width,
                                          vertical: 0.01 * height),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            0.015 * height),
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
                                              radius: 0.02 * height,
                                              backgroundColor: allData[index]
                                                  ["logo"],
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
                                              child:
                                                  const Icon(Icons.more_vert),
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
                    ),
                    Positioned(
                      left: 0.97 * width,
                      right: 0.0 * width,
                      child: InkResponse(
                        onTap: () {
                          setState(() {
                            scrollController
                                .jumpTo(scrollController.offset - 70);
                          });
                        },
                        child: Icon(
                          Icons.arrow_drop_up,
                          size: 0.04 * width,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 0.85 * height,
                      bottom: 0,
                      left: 0.97 * width,
                      right: 0.0 * width,
                      child: InkResponse(
                        onTap: () {
                          setState(() {
                            scrollController
                                .jumpTo(scrollController.offset + 70);
                          });
                        },
                        child: Icon(
                          Icons.arrow_drop_down,
                          size: 0.038 * width,
                        ),
                      ),
                    ),
                  ],
                )
              : width > 600 && width <= 1080
                  ? Stack(
                      children: [
                        RawScrollbar(
                          controller: scrollController,
                          thumbColor: Colors.grey,
                          thickness: 0.016 * width,
                          padding: EdgeInsets.only(
                              top: 0.028 * height, bottom: 0.02 * height),
                          child: Column(
                            children: [
                              (0.01 * height).addHSpace(),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.03 * width),
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
                                        borderRadius: BorderRadius.circular(
                                            0.01 * height),
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
                                        borderRadius: BorderRadius.circular(
                                            0.04 * height),
                                        border: Border.all(
                                          color: Colors.grey.withOpacity(0.4),
                                        ),
                                      ),
                                      child: Row(
                                        children: [
                                          TextField(
                                            style: TextStyle(
                                              color:
                                                  Colors.grey.withOpacity(0.4),
                                            ),
                                            decoration: InputDecoration(
                                              constraints:
                                                  BoxConstraints.expand(
                                                height: 0.05 * height,
                                                width: 0.32 * width,
                                              ),
                                              hintText: "Search",
                                              filled: true,
                                              fillColor: Colors.black,
                                              hintStyle: TextStyle(
                                                color: Colors.grey
                                                    .withOpacity(0.4),
                                              ),
                                              contentPadding:
                                                  EdgeInsets.symmetric(
                                                horizontal: 0.013 * width,
                                                vertical: 0.017 * height,
                                              ),
                                              border: OutlineInputBorder(
                                                borderRadius:
                                                    BorderRadius.horizontal(
                                                  left: Radius.circular(
                                                      0.03 * height),
                                                ),
                                                borderSide: BorderSide(
                                                  color: Colors.grey
                                                      .withOpacity(0.4),
                                                ),
                                              ),
                                            ),
                                          ),
                                          RotatedBox(
                                            quarterTurns: 1,
                                            child: Divider(
                                              height: 0,
                                              color:
                                                  Colors.grey.withOpacity(0.4),
                                            ),
                                          ),
                                          const Spacer(),
                                          InkResponse(
                                            onTap: () {},
                                            child:
                                                const Icon(Icons.search_sharp),
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
                                        backgroundColor:
                                            Colors.grey.withOpacity(0.3),
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
                                      child:
                                          const Icon(Icons.video_call_outlined),
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
                                      child: const Icon(
                                          Icons.notifications_active),
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
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0.005 * width),
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
                                          borderRadius: BorderRadius.circular(
                                              0.01 * height),
                                          hoverColor:
                                              Colors.grey.withOpacity(0.4),
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
                                          borderRadius: BorderRadius.circular(
                                              0.01 * height),
                                          hoverColor:
                                              Colors.grey.withOpacity(0.4),
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
                                          borderRadius: BorderRadius.circular(
                                              0.01 * height),
                                          hoverColor:
                                              Colors.grey.withOpacity(0.4),
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
                                          borderRadius: BorderRadius.circular(
                                              0.01 * height),
                                          hoverColor:
                                              Colors.grey.withOpacity(0.4),
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
                                                return InkWell(
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
                                                      BorderRadius.circular(
                                                          0.01 * height),
                                                  hoverColor: Colors.grey
                                                      .withOpacity(0.1),
                                                  child: Container(
                                                    margin:
                                                        EdgeInsets.symmetric(
                                                            horizontal:
                                                                0.01 * width),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal:
                                                                0.02 * width,
                                                            vertical:
                                                                0.01 * height),
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
                                                childAspectRatio:
                                                    0.00135 * width,
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
                                                        decoration:
                                                            BoxDecoration(
                                                          color: allData[index]
                                                              ["image"],
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(0.01 *
                                                                      height),
                                                        ),
                                                      ),
                                                      (0.01 * height)
                                                          .addHSpace(),
                                                      Row(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          CircleAvatar(
                                                            radius:
                                                                0.02 * width,
                                                            backgroundColor:
                                                                allData[index]
                                                                    ["logo"],
                                                          ),
                                                          (0.02 * width)
                                                              .addWSpace(),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                width: 0.28 *
                                                                    width,
                                                                child: Text(
                                                                  "${allData[index]["title"]}",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        0.02 *
                                                                            width,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                "${allData[index]["name"]}",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize:
                                                                      0.02 *
                                                                          width,
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    "${allData[index]["views"]}",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .grey,
                                                                      fontSize:
                                                                          0.02 *
                                                                              width,
                                                                    ),
                                                                  ),
                                                                  (0.01 * width)
                                                                      .addWSpace(),
                                                                  Icon(
                                                                    Icons
                                                                        .circle,
                                                                    color: Colors
                                                                        .grey,
                                                                    size: 0.008 *
                                                                        height,
                                                                  ),
                                                                  (0.01 * width)
                                                                      .addWSpace(),
                                                                  Text(
                                                                    "${allData[index]["time"]}",
                                                                    style:
                                                                        TextStyle(
                                                                      color: Colors
                                                                          .grey,
                                                                      fontSize:
                                                                          0.02 *
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
                                                              Icons.more_vert,
                                                            ),
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
                          ),
                        ),
                        Positioned(
                          left: 0.975 * width,
                          right: 0.0 * width,
                          child: InkResponse(
                            onTap: () {
                              setState(() {
                                scrollController
                                    .jumpTo(scrollController.offset - 70);
                              });
                            },
                            child: Icon(
                              Icons.arrow_drop_up,
                              size: 0.033 * width,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0.83 * height,
                          bottom: 0,
                          left: 0.975 * width,
                          right: 0.0 * width,
                          child: InkResponse(
                            onTap: () {
                              setState(() {
                                scrollController
                                    .jumpTo(scrollController.offset + 70);
                              });
                            },
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 0.033 * width,
                            ),
                          ),
                        ),
                      ],
                    )
                  : Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            (0.015 * height).addHSpace(),
                            Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 0.02 * width),
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
                                  (0.1 * width).addWSpace(),
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
                                              width: 0.35 * width,
                                            ),
                                            hintText: "Search",
                                            filled: true,
                                            fillColor: Colors.black,
                                            hintStyle: TextStyle(
                                              color:
                                                  Colors.grey.withOpacity(0.4),
                                            ),
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                              horizontal: 0.013 * width,
                                              vertical: 0.017 * height,
                                            ),
                                            border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.horizontal(
                                                left: Radius.circular(
                                                    0.03 * height),
                                              ),
                                              borderSide: BorderSide(
                                                color: Colors.grey
                                                    .withOpacity(0.4),
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
                                  (0.02 * width).addWSpace(),
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
                                      backgroundColor:
                                          Colors.grey.withOpacity(0.3),
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
                                    child:
                                        const Icon(Icons.video_call_outlined),
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
                                    child:
                                        const Icon(Icons.notifications_active),
                                  ),
                                  (0.02 * width).addWSpace(),
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
                            (0.015 * height).addHSpace(),
                            Row(
                              children: [
                                Container(
                                  height: 0.999 * height,
                                  width: 0.18 * width,
                                  padding: EdgeInsets.only(
                                    bottom: 0.04 * height,
                                    left: 0.005 * width,
                                  ),
                                  child: InkResponse(
                                    onTap: () {},
                                    onHover: (value) {
                                      setState(() {
                                        isHover = value;
                                      });
                                    },
                                    child: RawScrollbar(
                                      controller: scrollController,
                                      thumbColor: Colors.grey,
                                      thickness: 0.006 * width,
                                      thumbVisibility: isHover ? true : false,
                                      padding: EdgeInsets.only(
                                          top: 0.01 * height,
                                          bottom: 0.06 * height),
                                      child: ListView.separated(
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: EdgeInsets.only(
                                                right: 0.01 * width),
                                            child: InkResponse(
                                              onTap: () {
                                                setState(() {
                                                  selectFunction = index;
                                                });
                                              },
                                              onHover: (value) {
                                                isHover = value;
                                              },
                                              hoverColor:
                                                  Colors.grey.withOpacity(0.4),
                                              highlightShape:
                                                  BoxShape.rectangle,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      0.007 * width),
                                              child: Container(
                                                height: 0.06 * height,
                                                width: 0.15 * width,
                                                decoration: BoxDecoration(
                                                  color: selectFunction == index
                                                      ? Colors.grey
                                                          .withOpacity(0.4)
                                                      : Colors.transparent,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0.005 * width),
                                                ),
                                                child: Row(
                                                  children: [
                                                    (0.01 * width).addWSpace(),
                                                    Icon(allData2[index]
                                                        ["icon"]),
                                                    (0.01 * width).addWSpace(),
                                                    Text(
                                                      "${allData2[index]["name"]}",
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 0.01 * width,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          );
                                        },
                                        separatorBuilder: (context, index) {
                                          return index == 2
                                              ? Column(
                                                  children: [
                                                    Divider(
                                                      color: Colors.grey
                                                          .withOpacity(0.4),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 0.01 * width),
                                                      child: Row(
                                                        children: [
                                                          Text(
                                                            "You",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  0.011 * width,
                                                            ),
                                                          ),
                                                          (0.007 * width)
                                                              .addWSpace(),
                                                          Icon(
                                                            Icons
                                                                .arrow_forward_ios_rounded,
                                                            size: 0.012 * width,
                                                          ),
                                                        ],
                                                      ),
                                                    )
                                                  ],
                                                )
                                              : index == 6
                                                  ? Column(
                                                      children: [
                                                        Divider(
                                                          color: Colors.grey
                                                              .withOpacity(0.4),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 0.01 *
                                                                      width,
                                                                  right: 0.125 *
                                                                      width),
                                                          child: Text(
                                                            "Explore",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  0.011 * width,
                                                            ),
                                                          ),
                                                        )
                                                      ],
                                                    )
                                                  : index == 17
                                                      ? Column(
                                                          children: [
                                                            Divider(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.4),
                                                            ),
                                                            Padding(
                                                              padding: EdgeInsets.only(
                                                                  left: 0.01 *
                                                                      width,
                                                                  right: 0.06 *
                                                                      width),
                                                              child: Text(
                                                                "More from YouTube",
                                                                style:
                                                                    TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      0.011 *
                                                                          width,
                                                                ),
                                                              ),
                                                            )
                                                          ],
                                                        )
                                                      : index == 20
                                                          ? Divider(
                                                              color: Colors.grey
                                                                  .withOpacity(
                                                                      0.4),
                                                            )
                                                          : index == 24
                                                              ? Column(
                                                                  children: [
                                                                    Divider(
                                                                      color: Colors
                                                                          .grey
                                                                          .withOpacity(
                                                                              0.4),
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 0.01 *
                                                                              width,
                                                                          right:
                                                                              0.04 * width),
                                                                      child:
                                                                          Text(
                                                                        "About Press Copyright Contact us Creators Advertise Developers TermsPrivacy Policy & SafetyHow YouTube worksTest new features",
                                                                        style:
                                                                            TextStyle(
                                                                          color:
                                                                              Colors.white,
                                                                          fontSize:
                                                                              0.012 * width,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              : const SizedBox();
                                        },
                                        itemCount: allData2.length,
                                      ),
                                    ),
                                  ),
                                ),
                                (0.01 * width).addWSpace(),
                                SizedBox(
                                  height: 0.999 * height,
                                  width: 0.8 * width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 0.05 * height,
                                        child: Row(
                                          children: List.generate(
                                            data.length,
                                            (index) => InkWell(
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
                                                  BorderRadius.circular(
                                                      0.01 * height),
                                              hoverColor:
                                                  Colors.grey.withOpacity(0.1),
                                              child: Container(
                                                margin: EdgeInsets.symmetric(
                                                  horizontal: 0.005 * width,
                                                  vertical: 0,
                                                ),
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
                                            ),
                                          ),
                                        ),
                                      ),
                                      (0.015 * height).addHSpace(),
                                      Expanded(
                                        child: GridView.builder(
                                          controller: scrollController2,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            childAspectRatio: 0.00125 * height,
                                            crossAxisSpacing: 0.01 * width,
                                          ),
                                          itemCount: allData.length,
                                          padding: EdgeInsets.zero,
                                          itemBuilder: (context, index) {
                                            return Column(
                                              children: [
                                                Container(
                                                  height: 0.3 * height,
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
                                                      radius: 0.018 * width,
                                                      backgroundColor:
                                                          allData[index]
                                                              ["logo"],
                                                    ),
                                                    (0.01 * width).addWSpace(),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        SizedBox(
                                                          width: 0.17 * width,
                                                          child: Text(
                                                            "${allData[index]["title"]}",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize:
                                                                  0.013 * width,
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
                                                                0.011 * width,
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
                                                                    0.011 *
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
                                                                    0.011 *
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
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Positioned(
                          left: 0.17 * width,
                          top: 0.08 * height,
                          child: InkResponse(
                            onTap: () {
                              setState(() {
                                scrollController
                                    .jumpTo(scrollController.offset - 70);
                              });
                            },
                            child: Icon(
                              Icons.arrow_drop_up,
                              size: 0.014 * width,
                            ),
                          ),
                        ),
                        Positioned(
                          top: 0.9 * height,
                          bottom: 0,
                          left: 0.17 * width,
                          child: InkResponse(
                            onTap: () {
                              setState(() {
                                scrollController
                                    .jumpTo(scrollController.offset + 70);
                              });
                            },
                            child: Icon(
                              Icons.arrow_drop_down,
                              size: 0.014 * width,
                            ),
                          ),
                        ),
                      ],
                    ),
        ),
      ),
    );
  }
}
