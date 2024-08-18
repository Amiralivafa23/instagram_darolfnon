// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:video_player/video_player.dart';
//
// class Test extends StatefulWidget {
//   const Test({Key? key}) : super(key: key);
//
//   @override
//   State<Test> createState() => _TestState();
// }
//
// class _TestState extends State<Test> {
//   VideoPlayerController? _videoPlayerController;
//
//   loadVideoPlayer(File file) {
//     if(_videoPlayerController != null) {
//       _videoPlayerController!.dispose();
//     }
//
//     _videoPlayerController = VideoPlayerController.file(file);
//     _videoPlayerController!.initialize().then((value) {
//       setState(() {});
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(
//         onPressed: selectVideo,
//         child: Icon(
//           Icons.add,
//         ),
//       ),
//       body: Center(
//         child: Stack(
//           children: [
//             if (_videoPlayerController != null) ...[
//               AspectRatio(
//                 aspectRatio: _videoPlayerController!.value.aspectRatio,
//                 child: VideoPlayer(_videoPlayerController!),
//               ),
//             ]
//           ],
//         ),
//       ),
//     );
//   }
//
//   void selectVideo() async {
//     final XFile? results =
//     await ImagePicker().pickVideo(source: ImageSource.gallery);
//
//     if (results != null) {
//       setState(() {
//         File file = File(results.path);
//         loadVideoPlayer(file);
//       });
//     } else {
//       print('No video picked');
//     }
//   }
// }