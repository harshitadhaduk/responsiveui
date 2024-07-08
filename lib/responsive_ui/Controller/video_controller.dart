import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class VideoController extends GetxController {
  var isHover = false.obs;
  List<Map<String, dynamic>> allData = [
    {
      "name": "Ripples Code",
      "title": "Big Buck Bunny",
      "views": "28k views",
      "time": "3 years ago",
      "image":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "logo":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "video":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    },
    {
      "name": "Abc",
      "title": "Elephant Dream",
      "views": "30k views",
      "time": "2 years ago",
      "image":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
      "logo":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "video":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
    },
    {
      "name": "Xyz",
      "title": "For Bigger Blazes",
      "views": "30k views",
      "time": "1 years ago",
      "image":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerBlazes.jpg",
      "logo":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "video":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4",
    },
    {
      "name": "Nijsef",
      "title": "For Bigger Escape",
      "views": "1k views",
      "time": "4 years ago",
      "image":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerEscapes.jpg",
      "logo":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "video":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4",
    },
    {
      "name": "Abc",
      "title": "For Bigger Fun",
      "views": "30k views",
      "time": "2 years ago",
      "image":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerFun.jpg",
      "logo":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "video":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
    },
    {
      "name": "Abc",
      "title": "For Bigger Joyrides",
      "views": "30k views",
      "time": "2 years ago",
      "image":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerJoyrides.jpg",
      "logo":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "video":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerJoyrides.mp4",
    },
    {
      "name": "Abc",
      "title": "For Bigger Meltdowns",
      "views": "30k views",
      "time": "2 years ago",
      "image":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ForBiggerMeltdowns.jpg",
      "logo":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "video":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerMeltdowns.mp4",
    },
    {
      "name": "Abc",
      "title": "Sintel",
      "views": "30k views",
      "time": "2 years ago",
      "image":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/Sintel.jpg",
      "logo":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "video":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/Sintel.mp4",
    },
    {
      "name": "Abc",
      "title": "Subaru Outback On Street And Dirt",
      "views": "30k views",
      "time": "2 years ago",
      "image":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/SubaruOutbackOnStreetAndDirt.jpg",
      "logo":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
      "video":
          "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/SubaruOutbackOnStreetAndDirt.mp4",
    },
  ];
  // List<VideoPlayerController?> videoData = [];
  VideoPlayerController? video;
  var selectVideo = 0.obs;
  var select = 0.obs;
  var selectFunction = 0.obs;
  late ScrollController scrollController;
  late ScrollController scrollController2;

  @override
  void onInit() {
    super.onInit();
    scrollController = ScrollController();
    scrollController2 = ScrollController();
    videoPlay();
  }

  // Future<void> initializedVideo() async {
  //   for (int i = 0; i < allData.length; i++) {
  //     var url = allData[i]["video"];
  //     var controller = VideoPlayerController.networkUrl(Uri.parse("$url"));
  //     await controller.initialize();
  //     videoData.add(controller);
  //   }
  //   print(videoData);
  //   update();
  // }

  Future<void> videoPlay() async {
    var videoUrl = allData[selectVideo.value]["video"];
    var videoController = VideoPlayerController.networkUrl(Uri.parse(videoUrl));
    await videoController.initialize();
    video = videoController;
    print("$video");
    update();
  }

  @override
  void onClose() {
    super.onClose();
    scrollController.dispose();
    scrollController2.dispose();
    video!.dispose();
  }
}
