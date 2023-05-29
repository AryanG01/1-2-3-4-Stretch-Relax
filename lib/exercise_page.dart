import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_camera/flutter_camera.dart';

class ExercisePage extends StatefulWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ExercisePageState createState() => _ExercisePageState();
}

class _ExercisePageState extends State<ExercisePage> {
  @override
  Widget build(BuildContext context) {
    return FlutterCamera(
      color: Colors.amber,
      onImageCaptured: (value) {
        final path = value.path;
        print("::::::::::::::::::::::::::::::::: $path");
        if (path.contains('.jpg')) {
          showDialog(
              context: context,
              builder: (context) {
                return AlertDialog(
                  content: Image.file(File(path)),
                );
              });
        }
      },
      onVideoRecorded: (value) {
        final path = value.path;
        print('::::::::::::::::::::::::;; dkdkkd $path');
        ///Show video preview .mp4
      },
    );
    // return Container();
  }
}
























// class ExercisePage extends StatefulWidget {
//   const ExercisePage({super.key});

//   @override
//   State<ExercisePage> createState() => _ExercisePageState();
// }

// class _ExercisePageState extends State<ExercisePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Column(
//       children: [
//         FlutterCamera(
//           color: Colors.amber,
//           onImageCaptured: (value) {
//             final path = value.path;
//             print("::::::::::::::::::::::::::::::::: $path");
//             if (path.contains('.jpg')) {
//               showDialog(
//                   context: context,
//                   builder: (context) {
//                     return AlertDialog(
//                       content: Image.file(File(path)),
//                     );
//                   });
//             }
//           },
//           onVideoRecorded: (value) {
//             final path = value.path;
//             print('::::::::::::::::::::::::;; dkdkkd $path');

//             ///Show video preview .mp4
//           },
//         ),
//         const SizedBox(
//           height: 50,
//         ),
//         Center(
//             child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//                 style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blue,
//                     fixedSize: const Size(330, 40)),
//                 child: const Text('Timer'))),
//       ],
//     ));
//   }
// }
