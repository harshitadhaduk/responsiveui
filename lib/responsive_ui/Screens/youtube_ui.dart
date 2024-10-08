import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_ui/responsive_ui/Controller/video_controller.dart';
import 'package:responsive_ui/responsive_ui/Screens/video_play_screen.dart';
import 'package:responsive_ui/responsive_ui/general/down_button.dart';
import 'package:responsive_ui/responsive_ui/general/first_raw_common_button.dart';
import 'package:responsive_ui/responsive_ui/general/profile_circle.dart';
import 'package:responsive_ui/responsive_ui/general/sized_box.dart';
import 'package:responsive_ui/responsive_ui/general/up_button.dart';
import 'package:responsive_ui/responsive_ui/general/youtube_logo.dart';
import 'package:video_player/video_player.dart';

class YoutubeUiScreen extends StatefulWidget {
  const YoutubeUiScreen({super.key});

  @override
  State<YoutubeUiScreen> createState() => _YoutubeUiScreenState();
}

class _YoutubeUiScreenState extends State<YoutubeUiScreen> {
  VideoController videoController = Get.put(VideoController());
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
  List<Map<String, dynamic>> tabletData = [
    {"icon": Icons.home, "name": "Home"},
    {"icon": Icons.send, "name": "Shorts"},
    {"icon": Icons.subscriptions, "name": "Subscription"},
    {"icon": Icons.person, "name": "You"},
  ];
  List<Map<String, dynamic>> sideMenuData = [
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

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: Obx(
        () => videoController.selectVideo2.value == -1
            ? const SizedBox()
            : Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    height: 0.2 * height,
                    width: 0.4 * width,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: VideoPlayer(videoController.video!),
                  ),
                  InkResponse(
                    onTap: () {
                      setState(() {
                        videoController.video!.value.isPlaying
                            ? videoController.video!.pause()
                            : videoController.video!.play();
                      });
                    },
                    child: Icon(
                      videoController.video!.value.isPlaying
                          ? Icons.pause
                          : Icons.play_arrow,
                    ),
                  ),
                ],
              ),
      ),
      body: SafeArea(
        child: width <= 600
            ? Stack(
                clipBehavior: Clip.none,
                children: [
                  RawScrollbar(
                    controller: videoController.scrollController,
                    thumbColor: Colors.grey,
                    thickness: 0.018 * width,
                    padding: EdgeInsets.only(top: 0.022 * height),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 0.04 * width),
                      child: Column(
                        children: [
                          (0.015 * height).addHSpace(),
                          Row(
                            children: [
                              // 5.0.addWSpace(),
                              const FirstCommonButton(icon: Icons.menu),
                              (0.03 * width).addWSpace(),
                              // const YoutubeLogo(textSize: 20),
                              const YoutubeLogo(textSize: 20.0),
                              const Spacer(),
                              const FirstCommonButton(icon: Icons.search_sharp),
                              (0.02 * width).addWSpace(),
                              const FirstCommonButton(icon: Icons.mic),
                              (0.02 * width).addWSpace(),
                              const FirstCommonButton(
                                  icon: Icons.video_call_outlined),
                              (0.02 * width).addWSpace(),
                              const FirstCommonButton(
                                  icon: Icons.notifications_active),
                              (0.02 * width).addWSpace(),
                              const ProfileCircle(),
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
                                    videoController.select.value = index;
                                  },
                                  onHover: (value) {
                                    videoController.isHover.value = value;
                                  },
                                  borderRadius:
                                      BorderRadius.circular(0.01 * height),
                                  hoverColor: Colors.grey.withOpacity(0.2),
                                  child: Obx(
                                    () => Container(
                                      margin: EdgeInsets.symmetric(
                                          horizontal: 0.01 * width),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 0.05 * width,
                                          vertical: 0.01 * height),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(
                                            0.015 * height),
                                        color: videoController.select.value ==
                                                index
                                            ? Colors.white
                                            : Colors.grey.withOpacity(0.2),
                                      ),
                                      child: Text(
                                        "${data[index]}",
                                        style: TextStyle(
                                          color: videoController.select.value ==
                                                  index
                                              ? Colors.black
                                              : Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          (0.01 * height).addHSpace(),
                          Expanded(
                            child: ListView.builder(
                              controller: videoController.scrollController,
                              itemCount: videoController.allData.length,
                              padding: EdgeInsets.zero,
                              itemBuilder: (context, index) {
                                return InkWell(
                                  borderRadius: BorderRadius.circular(10),
                                  onTap: () {
                                    videoController.selectVideo2.value = index;
                                    videoController.selectVideo.value = index;
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const VideoPlayScreen(),
                                      ),
                                    );
                                  },
                                  radius: 10,
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 0.01 * height),
                                    child: Column(
                                      children: [
                                        Container(
                                          height: 0.35 * height,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: NetworkImage(
                                                    "${videoController.allData[index]["image"]}"),
                                                fit: BoxFit.cover),
                                            borderRadius:
                                                BorderRadius.circular(20),
                                          ),
                                        ),
                                        (0.01 * height).addHSpace(),
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            CircleAvatar(
                                              radius: 0.035 * width,
                                              backgroundImage: NetworkImage(
                                                  "${videoController.allData[index]["logo"]}"),
                                            ),
                                            (0.02 * width).addWSpace(),
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "${videoController.allData[index]["title"]}",
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 16,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "${videoController.allData[index]["name"]}",
                                                  style: const TextStyle(
                                                    color: Colors.grey,
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    Text(
                                                      "${videoController.allData[index]["views"]}",
                                                      style: const TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14,
                                                      ),
                                                    ),
                                                    (0.015 * width).addWSpace(),
                                                    Icon(
                                                      Icons.circle,
                                                      color: Colors.grey,
                                                      size: 0.01 * height,
                                                    ),
                                                    (0.015 * width).addWSpace(),
                                                    Text(
                                                      "${videoController.allData[index]["time"]}",
                                                      style: const TextStyle(
                                                        color: Colors.grey,
                                                        fontSize: 14,
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
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  UpCommonButton(
                      left: 0.97 * width,
                      right: 0.0 * width,
                      iconSize: 0.04 * width),
                  DownCommonButton(
                    bottom: 0.0,
                    left: 0.97 * width,
                    right: 0.0 * width,
                    iconSize: 0.04 * width,
                  ),
                ],
              )
            : width > 600 && width <= 1080
                ? Stack(
                    children: [
                      SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: RawScrollbar(
                          controller: videoController.scrollController,
                          thumbVisibility: true,
                          thickness: 0.012 * width,
                          thumbColor: Colors.grey,
                          padding:
                              EdgeInsets.symmetric(vertical: 0.032 * height),
                          child: Column(
                            children: [
                              (0.01 * height).addHSpace(),
                              Padding(
                                padding: EdgeInsets.only(
                                    right: 0.02 * width, left: 20),
                                child: Row(
                                  children: [
                                    const FirstCommonButton(icon: Icons.menu),
                                    (20.0).addWSpace(),
                                    const YoutubeLogo(textSize: 20),
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
                                        videoController.isHover.value = value;
                                      },
                                      radius: 20,
                                      hoverColor: Colors.grey.withOpacity(0.4),
                                      child: CircleAvatar(
                                        radius: 0.025 * height,
                                        backgroundColor:
                                            Colors.grey.withOpacity(0.3),
                                        child: const Icon(Icons.mic,
                                            color: Colors.white),
                                      ),
                                    ),
                                    const Spacer(),
                                    const FirstCommonButton(
                                        icon: Icons.video_call_outlined),
                                    (20.0).addWSpace(),
                                    const FirstCommonButton(
                                        icon: Icons.notifications_active),
                                    (20.0).addWSpace(),
                                    const ProfileCircle(),
                                  ],
                                ),
                              ),
                              (0.01 * height).addHSpace(),
                              Padding(
                                padding: EdgeInsets.only(left: 0.003 * width),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 0.01 * width),
                                      child: Column(
                                        children: List.generate(
                                          tabletData.length,
                                          (index) => InkWell(
                                            onTap: () {},
                                            onHover: (value) {
                                              videoController.isHover.value =
                                                  value;
                                            },
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            hoverColor:
                                                Colors.grey.withOpacity(0.4),
                                            child: Container(
                                              width: 60,
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 10),
                                              child: Column(
                                                children: [
                                                  Icon(tabletData[index]
                                                      ["icon"]),
                                                  Text(
                                                    "${tabletData[index]["name"]}",
                                                    style: const TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 10,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: context.height,
                                      width: 0.88 * width,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          (0.01 * height).addHSpace(),
                                          SizedBox(
                                            height: 0.05 * height,
                                            child: ListView.builder(
                                              scrollDirection: Axis.horizontal,
                                              shrinkWrap: true,
                                              itemCount: data.length,
                                              padding: EdgeInsets.zero,
                                              itemBuilder: (context, index) {
                                                return InkWell(
                                                  onTap: () {
                                                    videoController
                                                        .select.value = index;
                                                  },
                                                  onHover: (value) {
                                                    videoController
                                                        .isHover.value = value;
                                                  },
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                  hoverColor: Colors.grey
                                                      .withOpacity(0.2),
                                                  child: Obx(
                                                    () => Container(
                                                      margin:
                                                          EdgeInsets.symmetric(
                                                              horizontal:
                                                                  0.01 * width),
                                                      padding:
                                                          EdgeInsets.symmetric(
                                                              horizontal:
                                                                  0.02 * width,
                                                              vertical: 0.01 *
                                                                  height),
                                                      decoration: BoxDecoration(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(10),
                                                        color: videoController
                                                                    .select
                                                                    .value ==
                                                                index
                                                            ? Colors.white
                                                            : Colors.grey
                                                                .withOpacity(
                                                                    0.2),
                                                      ),
                                                      child: Text(
                                                        "${data[index]}",
                                                        style: TextStyle(
                                                          color: videoController
                                                                      .select
                                                                      .value ==
                                                                  index
                                                              ? Colors.black
                                                              : Colors.white,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ),
                                          (0.01 * height).addHSpace(),
                                          Expanded(
                                            child: GridView.builder(
                                              controller: videoController
                                                  .scrollController,
                                              gridDelegate:
                                                  SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisCount: 2,
                                                crossAxisSpacing: 0.01 * width,
                                                mainAxisSpacing: 0.01 * height,
                                                mainAxisExtent: 0.39 * height,
                                              ),
                                              padding: EdgeInsets.only(
                                                  bottom: 0.07 * height),
                                              itemCount: videoController
                                                  .allData.length,
                                              itemBuilder: (context, index) {
                                                return InkWell(
                                                  onTap: () {
                                                    videoController.selectVideo2
                                                        .value = index;
                                                    videoController.selectVideo
                                                        .value = index;
                                                    Navigator.push(
                                                      context,
                                                      MaterialPageRoute(
                                                        builder: (context) =>
                                                            const VideoPlayScreen(),
                                                      ),
                                                    );
                                                  },
                                                  child: Column(
                                                    children: [
                                                      Container(
                                                        height: 0.25 * height,
                                                        width: double.infinity,
                                                        decoration:
                                                            BoxDecoration(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(10),
                                                          image: DecorationImage(
                                                              image: NetworkImage(
                                                                  "${videoController.allData[index]["image"]}"),
                                                              fit:
                                                                  BoxFit.cover),
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
                                                                0.018 * width,
                                                            backgroundImage:
                                                                NetworkImage(
                                                                    "${videoController.allData[index]["logo"]}"),
                                                          ),
                                                          (0.015 * width)
                                                              .addWSpace(),
                                                          Column(
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              SizedBox(
                                                                width: 0.315 *
                                                                    width,
                                                                child: Text(
                                                                  "${videoController.allData[index]["title"]}",
                                                                  style:
                                                                      const TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        16.5,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .bold,
                                                                  ),
                                                                ),
                                                              ),
                                                              Text(
                                                                "${videoController.allData[index]["name"]}",
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 14,
                                                                ),
                                                              ),
                                                              Row(
                                                                children: [
                                                                  Text(
                                                                    "${videoController.allData[index]["views"]}",
                                                                    style:
                                                                        const TextStyle(
                                                                      color: Colors
                                                                          .grey,
                                                                      fontSize:
                                                                          13,
                                                                    ),
                                                                  ),
                                                                  (0.01 * width)
                                                                      .addWSpace(),
                                                                  Icon(
                                                                    Icons
                                                                        .circle,
                                                                    color: Colors
                                                                        .grey,
                                                                    size: 0.007 *
                                                                        height,
                                                                  ),
                                                                  (0.01 * width)
                                                                      .addWSpace(),
                                                                  Text(
                                                                    "${videoController.allData[index]["time"]}",
                                                                    style:
                                                                        const TextStyle(
                                                                      color: Colors
                                                                          .grey,
                                                                      fontSize:
                                                                          13,
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
                                                                Icons
                                                                    .more_vert),
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
                      ),
                      UpCommonButton(
                        left: 0.978 * width,
                        right: 0.0 * width,
                        iconSize: 0.032 * width,
                      ),
                      DownCommonButton(
                        bottom: 0,
                        left: 0.978 * width,
                        right: 0.0 * width,
                        iconSize: 0.032 * width,
                      ),
                    ],
                  )
                : Stack(
                    children: [
                      SingleChildScrollView(
                        physics: const NeverScrollableScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            (0.015 * height).addHSpace(),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                children: [
                                  const FirstCommonButton(icon: Icons.menu),
                                  20.0.addWSpace(),
                                  const YoutubeLogo(textSize: 22),
                                  120.0.addWSpace(),
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
                                  20.0.addWSpace(),
                                  InkResponse(
                                    onTap: () {},
                                    onHover: (value) {
                                      videoController.isHover.value = value;
                                    },
                                    radius: 20,
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
                                  const FirstCommonButton(
                                      icon: Icons.video_call_outlined),
                                  25.0.addWSpace(),
                                  const FirstCommonButton(
                                      icon: Icons.notifications_active),
                                  25.0.addWSpace(),
                                  const ProfileCircle(),
                                ],
                              ),
                            ),
                            (0.015 * height).addHSpace(),
                            Row(
                              children: [
                                Container(
                                  height: 0.999 * height,
                                  width: 212,
                                  padding: EdgeInsets.only(
                                    bottom: 0.04 * height,
                                    left: 5,
                                  ),
                                  child: InkWell(
                                    onTap: () {},
                                    onHover: (value) {
                                      videoController.isHover.value = value;
                                    },
                                    child: RawScrollbar(
                                      controller:
                                          videoController.scrollController,
                                      thumbColor: Colors.grey,
                                      thickness: 0.006 * width,
                                      thumbVisibility:
                                          videoController.isHover.value
                                              ? true
                                              : false,
                                      padding: EdgeInsets.only(
                                          top: 0.012 * height,
                                          bottom: 0.07 * height),
                                      child: ListView.separated(
                                        controller:
                                            videoController.scrollController,
                                        itemBuilder: (context, index) {
                                          return Padding(
                                            padding: const EdgeInsets.only(
                                                right: 15),
                                            child: InkWell(
                                              onTap: () {
                                                videoController.selectFunction
                                                    .value = index;
                                              },
                                              onHover: (value) {
                                                videoController.isHover.value =
                                                    value;
                                              },
                                              hoverColor:
                                                  Colors.grey.withOpacity(0.4),
                                              borderRadius:
                                                  BorderRadius.circular(5),
                                              child: Obx(
                                                () => Container(
                                                  height: 45,
                                                  width: 110,
                                                  decoration: BoxDecoration(
                                                    color: videoController
                                                                .selectFunction
                                                                .value ==
                                                            index
                                                        ? Colors.grey
                                                            .withOpacity(0.4)
                                                        : Colors.transparent,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                  ),
                                                  child: Row(
                                                    children: [
                                                      (0.01 * width)
                                                          .addWSpace(),
                                                      Icon(sideMenuData[index]
                                                          ["icon"]),
                                                      (0.01 * width)
                                                          .addWSpace(),
                                                      Text(
                                                        "${sideMenuData[index]["name"]}",
                                                        style: const TextStyle(
                                                          color: Colors.white,
                                                          fontSize: 14,
                                                        ),
                                                      ),
                                                    ],
                                                  ),
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
                                                      padding:
                                                          const EdgeInsets.only(
                                                              left: 14),
                                                      child: Row(
                                                        children: [
                                                          const Text(
                                                            "You",
                                                            style: TextStyle(
                                                              color:
                                                                  Colors.white,
                                                              fontSize: 16,
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
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 10),
                                                          child: Align(
                                                            alignment: Alignment
                                                                .centerLeft,
                                                            child: Text(
                                                              "Explore",
                                                              style: TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 17,
                                                              ),
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
                                                            const Padding(
                                                              padding: EdgeInsets
                                                                  .only(
                                                                      left: 14),
                                                              child: Align(
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                child: Text(
                                                                  "More from YouTube",
                                                                  style:
                                                                      TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        17,
                                                                  ),
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
                                                                    const Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left:
                                                                              14,
                                                                          right:
                                                                              10),
                                                                      child:
                                                                          Align(
                                                                        alignment:
                                                                            Alignment.centerLeft,
                                                                        child:
                                                                            Text(
                                                                          "About Press Copyright Contact us Creators Advertise Developers TermsPrivacy Policy & SafetyHow YouTube worksTest new features",
                                                                          style:
                                                                              TextStyle(
                                                                            color:
                                                                                Colors.white,
                                                                            fontSize:
                                                                                17,
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                )
                                                              : const SizedBox();
                                        },
                                        itemCount: sideMenuData.length,
                                      ),
                                    ),
                                  ),
                                ),
                                10.0.addWSpace(),
                                SizedBox(
                                  height: 0.999 * height,
                                  width: 0.79 * width,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: 0.05 * height,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: data.length,
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                videoController.select.value =
                                                    index;
                                              },
                                              onHover: (value) {
                                                videoController.isHover.value =
                                                    value;
                                              },
                                              borderRadius:
                                                  BorderRadius.circular(
                                                      0.01 * height),
                                              hoverColor:
                                                  Colors.grey.withOpacity(0.2),
                                              child: Obx(
                                                () => Container(
                                                  margin: EdgeInsets.symmetric(
                                                      horizontal:
                                                          0.005 * width),
                                                  padding: EdgeInsets.symmetric(
                                                      horizontal: 0.02 * width,
                                                      vertical: 0.01 * height),
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            0.015 * height),
                                                    color: videoController
                                                                .select.value ==
                                                            index
                                                        ? Colors.white
                                                        : Colors.grey
                                                            .withOpacity(0.2),
                                                  ),
                                                  child: Text(
                                                    "${data[index]}",
                                                    style: TextStyle(
                                                      color: videoController
                                                                  .select
                                                                  .value ==
                                                              index
                                                          ? Colors.black
                                                          : Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            );
                                          },
                                        ),
                                      ),
                                      (0.015 * height).addHSpace(),
                                      Expanded(
                                        child: GridView.builder(
                                          controller:
                                              videoController.scrollController2,
                                          gridDelegate:
                                              SliverGridDelegateWithFixedCrossAxisCount(
                                            crossAxisCount: 3,
                                            mainAxisExtent: 0.38 * height,
                                            crossAxisSpacing: 0.01 * width,
                                          ),
                                          itemCount:
                                              videoController.allData.length,
                                          padding: EdgeInsets.only(
                                              bottom: 0.1 * height),
                                          itemBuilder: (context, index) {
                                            return InkWell(
                                              onTap: () {
                                                videoController
                                                    .selectVideo2.value = index;
                                                videoController
                                                    .selectVideo.value = index;
                                                Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        const VideoPlayScreen(),
                                                  ),
                                                );
                                              },
                                              child: Column(
                                                children: [
                                                  Container(
                                                    height: 0.25 * height,
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              10),
                                                      image: DecorationImage(
                                                          image: NetworkImage(
                                                              "${videoController.allData[index]["image"]}"),
                                                          fit: BoxFit.cover),
                                                    ),
                                                  ),
                                                  (0.01 * height).addHSpace(),
                                                  Row(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      CircleAvatar(
                                                        radius: 0.017 * width,
                                                        backgroundImage:
                                                            NetworkImage(
                                                                "${videoController.allData[index]["logo"]}"),
                                                      ),
                                                      (0.01 * width)
                                                          .addWSpace(),
                                                      Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          SizedBox(
                                                            width:
                                                                0.184 * width,
                                                            child: Text(
                                                              "${videoController.allData[index]["title"]}",
                                                              style:
                                                                  const TextStyle(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 15,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            "${videoController.allData[index]["name"]}",
                                                            style:
                                                                const TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 13,
                                                            ),
                                                          ),
                                                          Row(
                                                            children: [
                                                              Text(
                                                                "${videoController.allData[index]["views"]}",
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                              (0.01 * width)
                                                                  .addWSpace(),
                                                              Icon(
                                                                Icons.circle,
                                                                color:
                                                                    Colors.grey,
                                                                size: 0.007 *
                                                                    height,
                                                              ),
                                                              (0.01 * width)
                                                                  .addWSpace(),
                                                              Text(
                                                                "${videoController.allData[index]["time"]}",
                                                                style:
                                                                    const TextStyle(
                                                                  color: Colors
                                                                      .grey,
                                                                  fontSize: 12,
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
                          ],
                        ),
                      ),
                      UpCommonButton(
                        left: 200,
                        top: 0.08 * height,
                        iconSize: 0.014 * width,
                      ),
                      DownCommonButton(
                        bottom: 0,
                        left: 200,
                        iconSize: 0.014 * width,
                      ),
                    ],
                  ),
      ),
    );
  }
}
